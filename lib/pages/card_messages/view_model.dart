import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/message_repository.dart';
import 'package:sora/repositories/slack_repository.dart';

final CardMessagesPageViewModelProvider = StateNotifierProvider.autoDispose<
    CardMessagesPageViewModel, CardMessagesPageModel>(
  CardMessagesPageViewModel.new,
);

class CardMessagesPageViewModel extends StateNotifier<CardMessagesPageModel> {
  CardMessagesPageViewModel(Ref ref)
      : _authRepository = ref.read(authRepositoryProvider),
        _messageRepository = ref.read(messageRepositoryProvider),
        _slackRepository = ref.read(slackRepositoryProvider),
        super(const CardMessagesPageModel()) {
    _userIdStateSubscription = _authRepository.userId.listen((userId) {
      state = state.copyWith(userId: userId);
      if (userId == null) {
        return;
      }
      _messagesSubscription = _messageRepository
          .fetchMessagesWithoutReply(userId)
          .listen((messages) {
        state = state.copyWith(messages: messages);
      });
    });
  }

  final AuthRepositoryBase _authRepository;
  final MessageRepositoryBase _messageRepository;
  final SlackRepository _slackRepository;

  late final StreamSubscription<String?> _userIdStateSubscription;
  late final StreamSubscription<List<Message?>> _messagesSubscription;

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

  bool onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );

    if (state.messages.isEmpty) {
      return false;
    }

    if (previousIndex < 0 || previousIndex >= state.messages.length) {
      return false;
    }

    final previousMessage = state.messages[previousIndex];
    if (previousMessage == null) {
      return false;
    }

    if (direction.name == 'right') {
      final replayMessage = previousMessage.negativeReply;
      final messageId = previousMessage.id;
      debugPrint('Replay message: $replayMessage to $messageId');
      unawaited(
        _slackRepository.reply(text: replayMessage, messageId: messageId),
      );
    }

    if (direction.name == 'left') {
      final replayMessage = previousMessage.positiveReply;
      final messageId = previousMessage.id;
      debugPrint('Replay message: $replayMessage to $messageId');
      unawaited(
        _slackRepository.reply(text: replayMessage, messageId: messageId),
      );
    }

    debugPrint('Current message: ${previousMessage.summary}');
    return true;
  }

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _messagesSubscription.cancel();
    super.dispose();
  }
}
