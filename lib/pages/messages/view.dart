import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/view_model.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/slack_repository.dart';


class MessagesPage extends HookConsumerWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(messagesPageViewModelProvider);
    final messages = model.messages;

    String formatWithWeekday(DateTime date) {
      final now = DateTime.now();
      final weekdays = ['月', '火', '水', '木', '金', '土', '日'];
      final weekday = weekdays[date.weekday - 1];
      final ampm = date.hour < 12 ? '午前' : '午後';
      final adjustedHour = date.hour <= 12 ? date.hour : date.hour - 12;

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
        body: const Center(child: Text('メッセージがありません')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
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
            onTap: () => (),
            child: Slidable(
              key: ValueKey(index),
              startActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const DrawerMotion(),
                dismissible: DismissiblePane(
                  onDismissed: () async {
                    await _showMyModalBottomSheetBad(context, message: message,ref: ref);
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
                    await _showMyModalBottomSheetGood(context, message: message, ref: ref);
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
                    Text(message.senderName,
                        style: const TextStyle(fontSize: 16),),
                    const Expanded(child: SizedBox()),
                    Text(formatWithWeekday(message.createdAt.toDate()),
                        style: const TextStyle(fontSize: 12),),
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

  Future<void> _showMyModalBottomSheetBad(BuildContext context,{required Message message,required WidgetRef ref})
    async {
      final slackRepo = ref.read(slackRepositoryProvider);
    await showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 506,
        width: 370,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message.positiveReply),
              const SizedBox(height: 20), // これにより、テキストとボタンの間にスペースができます
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async{
                      await slackRepo.reply(
                          text: message.positiveReply,
                          messageId: '',
                        );
                      },
                    child: const Text('キャンセル'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('決定'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyModalBottomSheetGood(BuildContext context, {required Message message,required WidgetRef ref})
  async {
    final slackRepo = ref.read(slackRepositoryProvider);
  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
        height: 506,
        width: 370,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message.negativeReply),
              const SizedBox(height: 20), // これにより、テキストとボタンの間にスペースができます
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async{
                      await slackRepo.reply(
                          text: message.negativeReply,
                          messageId: '',
                        );
                      },
                    child: const Text('キャンセル'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('決定'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
  );
}

  void _onSlidableActionTriggered(BuildContext context, String actionType) {
    print('Action $actionType was triggered.');
    // ここで実行したい処理を追加してください。
  }
}
