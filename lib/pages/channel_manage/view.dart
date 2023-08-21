import 'package:flutter/material.dart';
// for Clipboard
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/channel_manage/slack_verification_modal/view.dart';
import 'package:sora/pages/channel_manage/view_model.dart';

class ChannelManagePage extends HookConsumerWidget {
  const ChannelManagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(channelManagePageViewModelProvider);
    final slackUsers = model.slackUsers;

    return Scaffold(
      appBar: AppBar(title: const Text('Slackアカウント管理')),
      body: Builder(
        builder: (context) {
          if (slackUsers.isEmpty) {
            return const Center(child: Text('Slackアカウントが登録されていません'));
          }
          return ListView.builder(
            itemCount: slackUsers.length,
            itemBuilder: (context, index) {
              final slackUser = slackUsers[index];
              if (slackUser == null) {
                return const ListTile(
                  title: Text('ユーザー情報の取得に失敗しました。'),
                );
              }
              final slackTeamIconUrl = slackUser.slackTeamIconUrl;
              return ListTile(
                leading: slackTeamIconUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          slackTeamIconUrl,
                          width: 40,
                          height: 40,
                        ),
                      )
                    : null,
                title: Text(slackUser.slackTeamName),
                subtitle: Text('ワークスペースID: ${slackUser.slackTeamId}'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showSlackVerificationModal(context);
        },
        tooltip: 'アカウントを追加',
        child: const Icon(Icons.add),
      ),
    );
  }
}
