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

      // 午前 or 午後の判断
      final ampm = date.hour < 12 ? '午前' : '午後';

      // 午前・午後表示のための時間調整（13時以降は1から数える）
      final adjustedHour = date.hour <= 12 ? date.hour : date.hour - 12;

      // 今日の日付と指定された日付が同じであるかどうかを確認
      if (date.year == now.year &&
          date.month == now.month &&
          date.day == now.day) {
        return '$ampm $adjustedHour:${date.minute.toString().padLeft(2, '0')}';
      } else {
        return '${date.month}/${date.day}($weekday)';
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
          allowedSwipeDirection:
              AllowedSwipeDirection.only(right: true, left: true),
          cardsCount: messages.length,
          numberOfCardsDisplayed: 3,
          cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
            print(percentThresholdX);
            final opacityValue =
                (percentThresholdX.abs() / 100).clamp(0.0, 1.0);
            final message = messages[index];
            if (message == null) {
              return const SizedBox.shrink();
            }

            final iconUrl = message.senderIconUrl;
            return Stack(
              children: [
                // 背後の半円を描画するためのContainer
                Positioned(
                  left: percentThresholdX > 0 ? 0 : null,
                  right: percentThresholdX < 0 ? 0 : null,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width *
                        percentThresholdX.abs(),
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: percentThresholdX > 0
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        colors: [
                          if (percentThresholdX > 0)
                            Colors.red.withOpacity(opacityValue)
                          else
                            Colors.blue.withOpacity(opacityValue),
                          Colors.transparent,
                        ],
                        stops: const [0, 1],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
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
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
