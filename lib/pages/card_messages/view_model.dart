import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/message_repository.dart';

final CardMessagesPageViewModelProvider = StateNotifierProvider.autoDispose<
    CardMessagesPageViewModel, MessagesPageModel>(
  CardMessagesPageViewModel.new,
);

final autoReplyProvider = StateProvider.autoDispose<bool>((ref) => false);
final autoReplyMessageProvider = StateProvider.autoDispose<String>((ref) => '');

class CardMessagesPageViewModel extends StateNotifier<MessagesPageModel> {
  CardMessagesPageViewModel(Ref ref)
      : _authRepository = ref.read(authRepositoryProvider),
        _messageRepository = ref.read(messageRepositoryProvider),
        super(const MessagesPageModel()) {
    _userIdStateSubscription = _authRepository.userId.listen((userId) {
      state = state.copyWith(userId: userId);
      if (userId == null) {
        return;
      }
      _messagesSubscription =
          _messageRepository.fetchMessages(userId).listen((slackUsers) {
        state = state.copyWith(messages: slackUsers);
      });
    });
  }

  final AuthRepositoryBase _authRepository;
  final MessageRepositoryBase _messageRepository;
  late final StreamSubscription<String?> _userIdStateSubscription;
  late final StreamSubscription<List<Message?>> _messagesSubscription;

  void fetchMoreMessages() {
    final userId = state.userId;
    final lastMessageCreatedAt = state.lastMessageCreatedAt;
    if (userId == null || lastMessageCreatedAt == null) {
      return;
    }
    _messagesSubscription = _messageRepository
        .fetchMessages(userId, startAfter: lastMessageCreatedAt)
        .listen((newMessages) {
      if (newMessages.isNotEmpty) {
        state = state.copyWith(
          messages: [...state.messages, ...newMessages],
          lastMessageCreatedAt: newMessages.last?.createdAt,
        );
      }
    });
  }

  // 自動返信の状態
  bool _isAutoReplyEnabled = false;
  String _autoReplyMessage = '';

  bool get isAutoReplyEnabled => _isAutoReplyEnabled;
  String get autoReplyMessage => _autoReplyMessage;

  void setAutoReplyEnabled(bool value) {
    _isAutoReplyEnabled = value;
    state = state.copyWith(); // Stateの更新を通知
  }

  void setAutoReplyMessage(String message) {
    _autoReplyMessage = message;
    state = state.copyWith(); // Stateの更新を通知sa
  }

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _messagesSubscription.cancel();
    super.dispose();
  }
}
