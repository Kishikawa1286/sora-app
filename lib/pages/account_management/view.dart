import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/back_navigation_button/view.dart';
import 'package:sora/env.dart';
import 'package:sora/pages/account_management/components/slack_user_tile.dart';
import 'package:sora/pages/account_management/view_model.dart';
import 'package:sora/pages/webview/webview_page.dart';

class AccountManagementPage extends HookConsumerWidget {
  const AccountManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(accountManagementPageViewModelProvider);

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
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'チャットアカウント管理',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 24, left: 24),
            child: ElevatedButton(
              onPressed: () async {
                await pushWebViewPage(context, url: slackOathUrl);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.add),
                  ),
                  Text('新しいSlackワークスペースを登録'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            // This Theme is solely to remove the divider lines from the ExpansionTile
            child: Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text(
                  'Slack',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                children: model.slackUsers
                    .map((slackUser) => SlackUserTile(slackUser: slackUser!))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
