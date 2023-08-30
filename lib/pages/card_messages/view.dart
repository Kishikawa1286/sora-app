import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/view_model.dart';
import 'package:sora/services/home_background_color/service.dart';
import 'package:sora/services/home_tab/service.dart';
import 'package:sora/utils/format/date_formatting.dart';
import 'package:sora/utils/format/string_operations.dart';

class CardMessagesPage extends HookConsumerWidget {
  const CardMessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(CardMessagesPageViewModelProvider.notifier);
    final model = ref.watch(CardMessagesPageViewModelProvider);
    final messages = model.messages;

    final homeBackgroundColorService = ref.watch(
      homeBackgroundColorServiceProvider.notifier,
    );
    final homeTabService = ref.watch(homeTabServiceProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Listener(
        onPointerMove: (details) {
          homeBackgroundColorService.update(details.delta.dx);
        },
        onPointerUp: (_) {
          homeBackgroundColorService.reset();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: CardSwiper(
            duration: Duration.zero,
            isLoop: false,
            allowedSwipeDirection:
                AllowedSwipeDirection.only(right: true, left: true),
            cardsCount: messages.length + 1,
            numberOfCardsDisplayed:
                messages.length <= 3 ? messages.length + 1 : 3,
            onSwipe: (previousIndex, currentIndex, direction) async =>
                homeTabService.runWithLoading(
              () => viewModel.onSwipe(previousIndex, currentIndex, direction),
              onLoading: () => false,
            ),
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) {
              if (index == messages.length) {
                return const Center(child: Text('メッセージがありません'));
              }
              final message = messages[index];
              if (message == null) {
                return const SizedBox.shrink();
              }
              if (model.dismissedMessageIds.contains(message.id)) {
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
      ),
    );
  }
}
