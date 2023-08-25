import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/view_model.dart';
import 'package:sora/utils/format/date_formatting.dart';
import 'package:sora/utils/format/string_operations.dart';

class CardMessagesPage extends HookConsumerWidget {
  const CardMessagesPage({super.key});

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
      // 左へのスワイプの場合、白からオレンジへの補間
      const red = 255; // Red remains constant for orange
      final green = lerpValue(
        255,
        115,
        -normalizedOffset,
      ); // Interpolate between 255 and 115 for green
      final blue = lerpValue(
        255,
        0,
        -normalizedOffset,
      ); // Interpolate between 255 and 0 for blue
      return Color.fromRGBO(red, green, blue, 1);
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(CardMessagesPageViewModelProvider.notifier);
    final model = ref.watch(CardMessagesPageViewModelProvider);
    final messages = model.messages;

    final scaffoldBackgroundColor =
        _calculateBackgroundColor(model.swipeOffset);
    print('test: ${model.swipeOffset}');
    const circleRadius = 200.0;

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
        child: Stack(
          children: [
            // 半円を配置
            Positioned(
              top: (MediaQuery.of(context).size.height / 2) - circleRadius,
              right: -circleRadius,
              child: Container(
                width: circleRadius * 2,
                height: circleRadius * 2,
                decoration: BoxDecoration(
                  // color: Colors.grey, // この色は変更可能です
                  borderRadius: BorderRadius.circular(circleRadius),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: CardSwiper(
                allowedSwipeDirection:
                    AllowedSwipeDirection.only(right: true, left: true),
                cardsCount: messages.length,
                numberOfCardsDisplayed:
                    messages.length <= 3 ? messages.length : 3,
                onSwipe: viewModel.onSwipe,
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) {
                  final message = messages[index];
                  if (message == null) {
                    return const SizedBox.shrink();
                  }
                  final iconUrl = message.senderIconUrl;
                  return Card(
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
          ],
        ),
      ),
    );
  }
}
