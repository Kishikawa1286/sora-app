import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/view_model.dart';

class MessagesPage extends HookConsumerWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(messagesPageViewModelProvider);
    final messages = model.messages;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(
              onPressed: () {}, // TODO: Implement Slack processing
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 24),
                ),
              ),
              child: const Text('All', style: TextStyle(fontSize: 16)),
            ),
            ElevatedButton(
              onPressed: () {}, // TODO: Implement Slack processing
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 24),
                ),
              ),
              child: const Text('Slack', style: TextStyle(fontSize: 16)),
            ),
            ElevatedButton(
              onPressed: () {}, // TODO: Implement LINE processing
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

          return Slidable(
            key: ValueKey(index),
            startActionPane: ActionPane(
              extentRatio: 0.2,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) async {},
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
              children: [
                SlidableAction(
                  onPressed: (context) {},
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
              title: Text(message.senderName),
              subtitle: Text(message.createdAt.toDate().toIso8601String()),
            ),
          );
        },
      ),
    );
  }
}
