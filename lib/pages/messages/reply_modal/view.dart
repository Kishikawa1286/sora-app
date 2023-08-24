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
          replyModalMessageIdProvider.overrideWithValue(messageId),
          replyModalTextProvider.overrideWithValue(text),
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
    final viewModel = ref.watch(replyModalViewModelProvider);
    final text = viewModel.text;

    return Container(
      height: 506,
      width: 370,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    onCanceled?.call();
                    Navigator.of(context).pop();
                  },
                  child: const Text('キャンセル'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    onReplied?.call();
                    await viewModel.reply();
                  },
                  child: const Text('決定'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
