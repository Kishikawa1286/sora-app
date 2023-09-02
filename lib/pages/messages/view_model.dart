import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/message_repository.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final messagesPageViewModelProvider =
    StateNotifierProvider.autoDispose<MessagesPageViewModel, MessagesPageModel>(
  (ref) => MessagesPageViewModel(ref, const MessagesPageModel()),
);

class MessagesPageViewModel extends ViewModelStateNotifier<MessagesPageModel> {
  MessagesPageViewModel(Ref ref, super.model)
      : _authRepository = ref.read(authRepositoryProvider),
        _messageRepository = ref.read(messageRepositoryProvider) {
    _userIdStateSubscription = _authRepository.userId.listen((userId) {
      state = state.copyWith(userId: userId);
      if (userId == null) {
        return;
      }
      _messagesSubscription = _messageRepository
          .fetchMessagesWithoutReply(userId)
          .listen((slackUsers) {
        state = state.copyWith(messages: slackUsers);
      });
    });
  }

  final AuthRepositoryBase _authRepository;
  final MessageRepositoryBase _messageRepository;
  late final StreamSubscription<String?> _userIdStateSubscription;
  late final StreamSubscription<List<Message?>> _messagesSubscription;

  // Called in onDissmissed of DissmissablePane
  void dissmissMessage(int index) {
    final message = state.messages[index];
    if (message == null) {
      return;
    }
    final dismissedMessageIds = state.dismissedMessageIds;
    if (dismissedMessageIds.contains(message.id)) {
      return;
    }
    state = state.copyWith(
      dismissedMessageIds: [...dismissedMessageIds, message.id],
    );
  }

  void undissmissMessage(int index) {
    final message = state.messages[index];
    if (message == null) {
      return;
    }
    final dismissedMessageIds = state.dismissedMessageIds;
    if (!dismissedMessageIds.contains(message.id)) {
      return;
    }
    state = state.copyWith(
      dismissedMessageIds:
          dismissedMessageIds.where((id) => id != message.id).toList(),
    );
  }

  void fetchMoreMessages() {
    final userId = state.userId;
    final lastMessageCreatedAt = state.lastMessageCreatedAt;
    if (userId == null || lastMessageCreatedAt == null) {
      return;
    }
    _messagesSubscription = _messageRepository
        .fetchMessagesWithoutReply(userId, startAfter: lastMessageCreatedAt)
        .listen((newMessages) {
      if (newMessages.isNotEmpty) {
        state = state.copyWith(
          messages: [...state.messages, ...newMessages],
          lastMessageCreatedAt: newMessages.last?.createdAt,
        );
      }
    });
  }

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _messagesSubscription.cancel();
    super.dispose();
  }
}
