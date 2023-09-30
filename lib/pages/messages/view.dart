import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/message_list_tile/view.dart';
import 'package:sora/pages/messages/reply_modal/view.dart';
import 'package:sora/pages/messages/view_model.dart';
import 'package:sora/services/home_tab/service.dart';
import 'package:sora/utils/custom_icons.dart';

class MessagesPage extends HookConsumerWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(messagesPageViewModelProvider.notifier);
    final model = ref.watch(messagesPageViewModelProvider);
    final messages = model.messages;

    final homeTabService = ref.watch(homeTabServiceProvider.notifier);

    if (messages.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'メッセージ一覧',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: const Center(child: Text('メッセージがありません')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'メッセージ一覧',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];

          if (index == messages.length - 1) {
            viewModel.fetchMoreMessages();
          }

          if (message == null) {
            return const SizedBox.shrink();
          }
          if (model.dismissedMessageIds.contains(message.id)) {
            return const SizedBox.shrink();
          }

          return InkWell(
            onTap: () async {
              await Future.microtask(
                () => Navigator.of(context)
                    .pushNamed('message_detail/${message.id}'),
              );
            },
            child: Slidable(
              key: ValueKey(index),
              startActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const DrawerMotion(),
                dismissible: DismissiblePane(
                  onDismissed: () async {
                    viewModel.dissmissMessage(index);
                    await homeTabService.runWithLoading(
                      () async => showReplyModal(
                        context,
                        messageId: message.id,
                        text: message.negativeReply,
                        onCanceled: () => viewModel.undissmissMessage(index),
                      ),
                      onLoading: () => {},
                    );
                  },
                ),
                children: [
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color.fromARGB(255, 0, 149, 255),
                    foregroundColor: Colors.white,
                    icon: CustomIcons.emojiNegative,
                  ),
                ],
              ),
              endActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(
                  onDismissed: () async {
                    viewModel.dissmissMessage(index);
                    await homeTabService.runWithLoading(
                      () async => showReplyModal(
                        context,
                        messageId: message.id,
                        text: message.positiveReply,
                        onCanceled: () => viewModel.undissmissMessage(index),
                      ),
                      onLoading: () => {},
                    );
                  },
                ),
                children: [
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color.fromARGB(255, 255, 115, 0),
                    foregroundColor: Colors.white,
                    icon: CustomIcons.emojiPositive,
                  ),
                ],
              ),
              child: MessageListTile(message: message),
            ),
          );
        },
      ),
    );
  }
}
