import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/view_model.dart';

class MessagesPage extends HookConsumerWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(messagesPageViewModelProvider);
    final messages = model.messages;
    final viewModel = ref.read(messagesPageViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('メッセージ'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          if (message == null) {
            return const SizedBox.shrink();
          }

          // If we're at the last message, fetch more messages
          if (index == messages.length - 1) {
            viewModel.fetchMoreMessages();
          }

          final iconUrl = message.senderIconUrl;
          return ExpansionTile(
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
            subtitle: Text(message.createdAt.toDate().toIso8601String()),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(message.summary),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(message.message),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.reply),
        onPressed: () async {
          await showDialog<void>(
            context: context,
            builder: (context) {
              final autoReplyController =
                  TextEditingController(text: viewModel.autoReplyMessage);
              return AlertDialog(
                title: const Text('自動返信設定'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SwitchListTile(
                      title: const Text('自動返信を有効にする'),
                      value: viewModel.isAutoReplyEnabled,
                      onChanged: viewModel.setAutoReplyEnabled,
                    ),
                    if (viewModel.isAutoReplyEnabled)
                      TextField(
                        controller: autoReplyController,
                        decoration: const InputDecoration(
                          labelText: '返信メッセージ',
                        ),
                        onChanged: viewModel.setAutoReplyMessage,
                      ),
                  ],
                ),
                actions: [
                  TextButton(
                    child: const Text('キャンセル'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('保存'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
