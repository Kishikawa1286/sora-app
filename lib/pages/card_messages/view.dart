import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/view_model.dart';

class CardMessagesPage extends HookConsumerWidget {
  const CardMessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(CardMessagesPageViewModelProvider);
    final messages = model.messages;

    String formatWithWeekday(DateTime date) {
      final now = DateTime.now();
      final weekdays = ['月', '火', '水', '木', '金', '土', '日'];
      final weekday = weekdays[
          date.weekday - 1]; // DateTimeのweekdayは1から7の値を返すため、-1して配列のインデックスとして使用
      // 今日の日付と指定された日付が同じであるかどうかを確認
      if (date.year == now.year &&
          date.month == now.month &&
          date.day == now.day) {
        return '${date.hour}:${date.minute.toString().padLeft(2, '0')}';
      } else {
        return '${date.month}/${date.day}($weekday) ${date.hour}:${date.minute.toString().padLeft(2, '0')}';
      }
    }

    if (messages.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('メッセージ'),
        ),
        body: const Center(child: Text('メッセージがありません')), // メッセージがない場合の表示
      );
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('メッセージ'),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: CardSwiper(
          cardsCount: messages.length,
          numberOfCardsDisplayed: 3,
          cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
            final message = messages[index];
            if (message == null) {
              return const SizedBox.shrink();
            }

            final iconUrl = message.senderIconUrl;
            return Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        // SingleChildScrollViewをこの位置に移動
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(message.summary),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              child: Text(message.message),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
