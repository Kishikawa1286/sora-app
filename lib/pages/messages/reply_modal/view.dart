import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/reply_modal/view_model.dart';

Future<void> showReplyModal(
  BuildContext context, {
  required String messageId,
  required String text,
  void Function()? onCanceled,
  void Function()? onReplied,
}) =>
    showModalBottomSheet(
      context: context,
      builder: (context) => ProviderScope(
        overrides: [
          replyModalViewModelArgsProvider.overrideWithValue(
            ReplyModalViewModelArgs(messageId: messageId, text: text),
          ),
        ],
        child: ReplyModalContent(
          onCanceled: onCanceled,
          onReplied: onReplied,
        ),
      ),
    );

class ReplyModalContent extends HookConsumerWidget {
  const ReplyModalContent({this.onCanceled, this.onReplied, super.key});

  final void Function()? onCanceled;
  final void Function()? onReplied;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(replyModalViewModelProvider.notifier);
    final model = ref.watch(replyModalViewModelProvider);

    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 13),
            child: Text(
              'このメッセージで返信しますか?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 370,
            decoration: BoxDecoration(
              color: const Color(0xFFFBFCFF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 332,
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        model.text,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          // Moved the Row outside the Container
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      onCanceled?.call();
                      Navigator.of(context).pop();
                    },
                    child: const Text('キャンセル'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () async {
                      onReplied?.call();
                      await viewModel.reply();
                    },
                    child: const Text('決定'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
