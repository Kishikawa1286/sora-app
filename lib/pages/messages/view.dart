import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/reply_modal/view.dart';
import 'package:sora/pages/messages/view_model.dart';

import 'package:sora/utils/format/date_formatting.dart';

class MessagesPage extends HookConsumerWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(messagesPageViewModelProvider);
    final messages = model.messages;

    if (messages.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('メッセージ'),
        ),
        body: const Center(child: Text('メッセージがありません')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          // TODO: Add a button to switch between Slack, LINE and so on.
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 24),
                ),
              ),
              child: const Text('All', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 24),
                ),
              ),
              child: const Text('Slack', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 24),
                ),
              ),
              child: const Text('LINE', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          if (message == null) {
            return const SizedBox.shrink();
          }
          final iconUrl = message.senderIconUrl;
          return InkWell(
            child: Slidable(
              key: ValueKey(index),
              startActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const DrawerMotion(),
                dismissible: DismissiblePane(
                  onDismissed: () async {
                    await showReplyModal(
                      context,
                      messageId: message.id,
                      text: message.negativeReply,
                    );
                  },
                ),
                children: [
                  SlidableAction(
                    onPressed: (context) async {
                      _onSlidableActionTriggered(context, 'bad');
                    },
                    backgroundColor: const Color.fromARGB(255, 0, 149, 255),
                    foregroundColor: Colors.white,
                    icon: Icons.thumb_down,
                    label: 'bad',
                  ),
                ],
              ),
              endActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(
                  onDismissed: () async {
                    await showReplyModal(
                      context,
                      messageId: message.id,
                      text: message.positiveReply,
                    );
                  },
                ),
                children: [
                  SlidableAction(
                    onPressed: (context) async {
                      _onSlidableActionTriggered(context, 'good');
                    },
                    backgroundColor: const Color.fromARGB(255, 255, 115, 0),
                    foregroundColor: Colors.white,
                    icon: Icons.thumb_up,
                    label: 'good',
                  ),
                ],
              ),
              child: ListTile(
                leading: iconUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          iconUrl,
                          width: 56,
                          height: 56,
                        ),
                      )
                    : null,
                title: Row(
                  children: [
                    Text(
                      message.senderName,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Expanded(child: SizedBox()),
                    Text(
                      formatWithWeekday(message.createdAt.toDate()),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                subtitle:
                    Text(message.summary, style: const TextStyle(fontSize: 16)),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSlidableActionTriggered(BuildContext context, String actionType) {
    print('Action $actionType was triggered.');
    // ここで実行したい処理を追加してください。
  }
}
