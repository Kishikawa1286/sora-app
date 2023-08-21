import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/channel_manage/slack_verification_modal/view_model.dart';

Future<void> showSlackVerificationModal(BuildContext context) =>
    showModalBottomSheet(
      context: context,
      builder: (context) => const _SlackVerificationModalContent(),
    );

class _SlackVerificationModalContent extends HookConsumerWidget {
  const _SlackVerificationModalContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel =
        ref.watch(slackVerificationModalViewModelProvider.notifier);
    final model = ref.watch(slackVerificationModalViewModelProvider);
    final slackVerificationCode = model.slackVerificationCode;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Slackアカウントを追加', style: TextStyle(fontSize: 20)),
          const Text('Slack認証コードをSlackのBotにDMしてください'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: viewModel.createVerificationCode,
            child: const Text('Slack 認証コードを生成'),
          ),
          const SizedBox(height: 16),
          InkWell(
            onTap: () async {
              await Clipboard.setData(
                ClipboardData(text: slackVerificationCode),
              ).then(
                (value) => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('認証コードをコピーしました')),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    slackVerificationCode,
                    style: const TextStyle(fontFamily: 'Courier', fontSize: 16),
                  ),
                  const Icon(Icons.copy, size: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
