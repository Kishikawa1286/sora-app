import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/channel_manage/view_model.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:url_launcher/url_launcher.dart';

class ChannelManagePage extends HookConsumerWidget {
  const ChannelManagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(channelManagePageViewModelProvider);
    final viewModel = ref.watch(channelManagePageViewModelProvider.notifier);
    final slackUsers = model.slackUsers;

    return Scaffold(
      body: Builder(
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ListView(
            children: [
              const ExpansionTile(
                title: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.account_circle, size: 36),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'アカウント',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              ExpansionTile(
                title: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.question_answer, size: 36),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'チャンネル管理',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Opacity(
                          opacity: 0.3,
                          child: Text(
                            'slack',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (slackUsers.isEmpty)
                    const ListTile(
                      title: Text('登録されているユーザー情報はありません。'),
                    ),
                  ...slackUsers
                      .where((slackUser) => slackUser != null)
                      .map((slackUser) => SlackUserTile(slackUser: slackUser!)),
                ],
              ),
              const ExpansionTile(
                title: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.pending, size: 36),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'その他',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final url = Uri.parse('https://forms.gle/65SnZ7bRrBUisdNTA');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw Exception('Could not launch $url');
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red, // ボタンのテキスト色
                ),
                child: const Text('アカウント削除'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await viewModel.signOut();
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.white, // ボタンのテキスト色
                ),
                child: const Text('ログアウト'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlackUserTile extends StatelessWidget {
  const SlackUserTile({required this.slackUser, super.key});
  final SlackUser slackUser;

  @override
  Widget build(BuildContext context) {
    final slackTeamIconUrl = slackUser.slackTeamIconUrl;

    return Padding(
      padding: const EdgeInsets.only(top: 6, left: 32, right: 8, bottom: 6),
      child: ListTile(
        leading: slackTeamIconUrl != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  slackTeamIconUrl,
                  width: 56,
                  height: 56,
                ),
              )
            : null,
        title: Text(
          slackUser.slackTeamName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          'ワークスペースID: ${slackUser.slackTeamId}',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}