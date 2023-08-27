import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/view_model.dart';
import 'package:sora/utils/format/date_formatting.dart';
import 'package:sora/utils/format/string_operations.dart';

class CardMessagesPage extends HookConsumerWidget {
  const CardMessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(CardMessagesPageViewModelProvider.notifier);
    final model = ref.watch(CardMessagesPageViewModelProvider);
    final messages = model.messages;

    if (messages.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('メッセージ'),
        ),
        body: const Center(child: Text('メッセージがありません')), // メッセージがない場合の表示
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
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
      ),
    );
  }
}
