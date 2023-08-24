import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/view_model.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/utils/format/date_formatting.dart';
import 'package:sora/utils/format/string_operations.dart';

class CardMessagesPage extends HookConsumerWidget {
  const CardMessagesPage({super.key});

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  Color _calculateBackgroundColor(double offset) {
    const maxOffset = 350.0; // この値は調整可能です
    final normalizedOffset = (offset / maxOffset).clamp(-1.0, 1.0);

    int lerpValue(int start, int end, double fraction) =>
        (start + (end - start) * fraction).toInt();

    if (normalizedOffset > 0) {
      // 右へのスワイプの場合、白から青への補間
      final blueIntensity = lerpValue(255, 0, normalizedOffset);
      return Color.fromRGBO(blueIntensity, blueIntensity, 255, 1);
    } else if (normalizedOffset < 0) {
      // 左へのスワイプの場合、白から赤への補間
      final redIntensity = lerpValue(255, 0, -normalizedOffset);
      return Color.fromRGBO(255, redIntensity, redIntensity, 1);
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(CardMessagesPageViewModelProvider.notifier);
    final model = ref.watch(CardMessagesPageViewModelProvider);
    // final messages = model.messages;
    final swipeOffset = model.swipeOffset;

    // 以下はハリボテのメッセージ
    final messages = <Message>[
      Message(
        id: '1',
        userId: 'user1',
        type: 'text',
        message: 'こんにちは、これはテストメッセージです。',
        summary: 'テストメッセージ1',
        botMessage: 'こんにちは！',
        reply: '返信1',
        senderId: 'sender1',
        senderName: '送信者1',
        senderIconUrl: 'https://placehold.jp/3d4070/ffffff/150x150.png',
        imageUrls: [],
        fileAttached: false,
        replied: false,
        archived: false,
        read: true,
        positiveReply: '良い返信1',
        negativeReply: '悪い返信1',
        isScheduleAdjustment: false,
        createdAt: Timestamp.now(),
        lastUpdatedAt: Timestamp.now(),
      ),
      Message(
        id: '2',
        userId: 'user2',
        type: 'text',
        message: 'これは別のテストメッセージです。',
        summary: 'テストメッセージ2',
        botMessage: 'こんにちは、ユーザー2！',
        reply: '返信2',
        senderId: 'sender2',
        senderName: '送信者2',
        senderIconUrl: 'https://placehold.jp/3d4070/ffffff/150x150.png',
        imageUrls: [],
        fileAttached: false,
        replied: false,
        archived: false,
        read: false,
        positiveReply: '良い返信2',
        negativeReply: '悪い返信2',
        isScheduleAdjustment: false,
        createdAt: Timestamp.now(),
        lastUpdatedAt: Timestamp.now(),
      ),
      // 以下、必要な分だけメッセージを追加してください
    ];

    final scaffoldBackgroundColor =
        _calculateBackgroundColor(model.swipeOffset);
    print('test: ${model.swipeOffset}');

    if (messages.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('メッセージ'),
        ),
        body: const Center(child: Text('メッセージがありません')), // メッセージがない場合の表示
      );
    }

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Listener(
        onPointerMove: (details) {
          viewModel.updateSwipeOffset(details.delta.dx);
        },
        onPointerUp: (_) {
          viewModel.resetSwipeOffset();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: CardSwiper(
            allowedSwipeDirection:
                AllowedSwipeDirection.only(right: true, left: true),
            cardsCount: messages.length,
            numberOfCardsDisplayed: messages.length <= 3 ? messages.length : 3,
            onSwipe: _onSwipe,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) {
              final message = messages[index];
              if (message == null) {
                return const SizedBox.shrink();
              }
              final iconUrl = message.senderIconUrl;
              return Card(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                    top: 16,
                    left: 8,
                    right: 8,
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            message.summary,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: iconUrl != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    iconUrl,
                                    width: 40,
                                    height: 40,
                                  ),
                                )
                              : null,
                          title: Text(message.senderName),
                          subtitle: Text(
                            formatWithWeekday(message.createdAt.toDate()),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    removeMention(message.message),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
