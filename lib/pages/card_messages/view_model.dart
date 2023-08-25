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
          .listen((slackUsers) {
        state = state.copyWith(messages: slackUsers);
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

  void updateSwipeOffset(double delta) {
    final newOffset = state.swipeOffset + delta;
    state = state.copyWith(swipeOffset: newOffset);
  }

  void resetSwipeOffset() {
    state = state.copyWith(swipeOffset: 0);
  }

  Future<bool> onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) async {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    if (direction.name == 'right' &&
        currentIndex != null &&
        currentIndex >= 0 &&
        currentIndex < state.messages.length) {
      final replayMessage = state.messages[currentIndex]?.negativeReply;
      final messageId = state.messages[currentIndex]?.id;
      if (replayMessage == null || messageId == null) {
        return false;
      }
      debugPrint('Replay message: $replayMessage to $messageId');
      await _slackRepository.reply(text: replayMessage, messageId: messageId);
    }
    if (direction.name == 'left' &&
        currentIndex != null &&
        currentIndex >= 0 &&
        currentIndex < state.messages.length) {
      final replayMessage = state.messages[currentIndex]?.positiveReply;
      final messageId = state.messages[currentIndex]?.id;
      if (replayMessage == null || messageId == null) {
        return false;
      }
      debugPrint('Replay message: $replayMessage to $messageId');
      await _slackRepository.reply(text: replayMessage, messageId: messageId);
    }
    if (currentIndex != null &&
        currentIndex >= 0 &&
        currentIndex < state.messages.length) {
      debugPrint('Current message: ${state.messages[currentIndex]?.summary}');
    }
    return true;
  }

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _messagesSubscription.cancel();
    super.dispose();
  }
}
