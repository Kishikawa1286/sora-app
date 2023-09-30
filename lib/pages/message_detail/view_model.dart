import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/message_detail/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/message_repository/message_repository.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final messageDetailPageMessageIdProvider =
    Provider<String>((ref) => throw UnimplementedError());

final messageDetailPageViewModelProvider = StateNotifierProvider.autoDispose<
    MessageDetailPageViewModel, MessageDetailPageModel>(
  (ref) => MessageDetailPageViewModel(
    ref,
    MessageDetailPageModel(
      messageId: ref.watch(messageDetailPageMessageIdProvider),
    ),
  ),
  dependencies: [messageDetailPageMessageIdProvider],
);

class MessageDetailPageViewModel
    extends ViewModelStateNotifier<MessageDetailPageModel> {
  MessageDetailPageViewModel(Ref ref, super.model)
      : _authRepository = ref.read(authRepositoryProvider),
        _messageRepository = ref.read(messageRepositoryProvider) {
    _userIdStateSubscription = _authRepository.userId.listen((userId) {
      final messageId = state.messageId;
      if (userId == null || messageId == null) {
        return;
      }
      state = state.copyWith(userId: userId);

      _messageSubscription =
          _messageRepository.fetchMessage(userId, messageId).listen((message) {
        if (message == null) {
          return;
        }
        state = state.copyWith(message: message);
      });

      _slackMessageSubscription =
          _messageRepository.fetchSlackMessage(userId, messageId).listen(
        (slackMessage) {
          if (slackMessage == null) {
            return;
          }
          state = state.copyWith(slackMessage: slackMessage);
        },
      );
    });
  }

  final AuthRepositoryBase _authRepository;
  final MessageRepositoryBase _messageRepository;
  late final StreamSubscription<String?> _userIdStateSubscription;
  late final StreamSubscription<Message?> _messageSubscription;
  late final StreamSubscription<SlackMessage?> _slackMessageSubscription;

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _messageSubscription.cancel();
    await _slackMessageSubscription.cancel();
    super.dispose();
  }
}
