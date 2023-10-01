import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/message_detail/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/message_repository/message_repository.dart';
import 'package:sora/repositories/slack_repository/slack_repository.dart';
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
        _messageRepository = ref.read(messageRepositoryProvider),
        _slackRepository = ref.read(slackRepositoryProvider) {
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
  final SlackRepositoryBase _slackRepository;
  late final StreamSubscription<String?> _userIdStateSubscription;
  late final StreamSubscription<Message?> _messageSubscription;
  late final StreamSubscription<SlackMessage?> _slackMessageSubscription;

  final _replyTextController = TextEditingController();
  TextEditingController get replyTextController => _replyTextController;

  void showSora() {
    state = state.copyWith(soraShown: true);
  }

  void hideSora() {
    state = state.copyWith(soraShown: false);
  }

  void startSelectingReplyType() {
    state = state.copyWith(selectingReplyType: true);
  }

  void stopSelectingReplyType() {
    state = state.copyWith(selectingReplyType: false);
  }

  void startEditingReplyText() {
    state = state.copyWith(editingReplyText: true);
  }

  void stopEditingReplyText() {
    state = state.copyWith(editingReplyText: false);
  }

  // Getter must be defined if we want to use setter
  String get replyTextControllerText => _replyTextController.text;

  // Use setter instead of void function
  // This is recommended by the linter
  set replyTextControllerText(String text) {
    _replyTextController.text = text;
  }

  void updateReplyText(String? text) {
    if (text == null) {
      return;
    }
    state = state.copyWith(replyText: text);
  }

  Future<void> reply() async {
    final messageId = state.messageId;
    if (messageId == null) {
      return;
    }
    await _slackRepository.reply(text: state.replyText, messageId: messageId);
  }

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _messageSubscription.cancel();
    await _slackMessageSubscription.cancel();
    super.dispose();
  }
}
