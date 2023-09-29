import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/back_navigation_button/view.dart';
import 'package:sora/env.dart';
import 'package:sora/pages/other_settings/view_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OtherSettingsPage extends HookConsumerWidget {
  const OtherSettingsPage({super.key});

  TextStyle? _listTileTitleTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .titleSmall
      ?.copyWith(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(otherSettingsPageViewModelProvider.notifier);

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
              'その他',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('利用規約', style: _listTileTitleTextStyle(context)),
            onTap: () async {
              await launchUrlString(termsOfServiceUrl);
            },
          ),
          ListTile(
            title: Text('プライバシーポリシー', style: _listTileTitleTextStyle(context)),
            onTap: () async {
              await launchUrlString(privacyPolicyUrl);
            },
          ),
          ListTile(
            title: Text('ログアウト', style: _listTileTitleTextStyle(context)),
            onTap: () async {
              await viewModel.signOut().then(
                    (value) =>
                        Navigator.popUntil(context, (route) => route.isFirst),
                  );
            },
          ),
          ListTile(
            title: Text(
              'アカウント削除',
              style:
                  _listTileTitleTextStyle(context)!.copyWith(color: Colors.red),
            ),
            onTap: () async {
              await launchUrlString(accountDeletionFormUrl);
            },
          ),
        ],
      ),
    );
  }
}
