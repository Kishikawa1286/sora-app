import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'ユーザー設定',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: Text(
                'チャットアカウント管理',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () async {
                await Navigator.of(context).pushNamed('account_management');
              },
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: Text(
                '返信設定',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () async {
                await Navigator.of(context).pushNamed('message_settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.pending_outlined),
              title: Text(
                'その他',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () async {
                await Navigator.of(context).pushNamed('other_settings');
              },
            ),
          ],
        ),
      );
}
