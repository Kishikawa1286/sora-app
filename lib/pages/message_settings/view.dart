import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/back_navigation_button/view.dart';
import 'package:sora/pages/message_settings/view_model.dart';

class MessageSettingsPage extends HookConsumerWidget {
  const MessageSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(messageSettingsPageViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: const Padding(
          padding: EdgeInsets.all(16),
          child: BackNavigationButton(label: 'ユーザー設定'),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              '返信設定',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            title: const Text('スケジュール調整URL'),
            subtitle: TextField(
              controller: viewModel.urlTextController,
              onChanged: viewModel.updateUrlText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 128),
            child: OutlinedButton(
              onPressed: viewModel.saveUrl,
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 1.5,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              child: Text(
                '保存',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
