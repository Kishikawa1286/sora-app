import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/channel_manage/slack_verification_modal/view.dart';
import 'package:sora/pages/channel_manage/view_model.dart';

class ChannelManagePage extends HookConsumerWidget {
  const ChannelManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(channelManagePageViewModelProvider);
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
                      padding: EdgeInsets.only(left: 8, bottom: 0),
                      child: Icon(Icons.account_circle, size: 36),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'アカウント',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: 'NotoSansJP',
                      ),
                    ),
                  ],
                ),
                // children: [
                //   ListTile(
                //       title: Column(
                //     children: [
                //       Container(
                //         child: const Text('test'),
                //       ),
                //       // TextButton(
                //       //   onPressed: () {},
                //       //   style: ElevatedButton.styleFrom(
                //       //     primary: const Color(0x22005D),
                //       //     elevation: 16,
                //       //   ),
                //       //   child: Text('enabled'),
                //       // ),
                //       Container(child: const Text("新しいアカウントを作成")),
                //     ],
                //   ))
                // ],
              ),
              ExpansionTile(
                title: const Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 0.0, left: 8.0, bottom: 0.0),
                      child: Icon(Icons.question_answer, size: 36),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'チャンネル管理',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: 'NotoSansJP',
                      ),
                    ),
                  ],
                ),
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 0.0, left: 24.0, bottom: 0.0),
                        child: Opacity(
                          opacity: 0.3,
                          child: Text(
                            'slack',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontFamily: 'NotoSansJP',
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
                      .map((slackUser) => SlackUserTile(slackUser: slackUser))
                      .toList(),
                ],
              ),
              const ExpansionTile(
                title: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0.0, left: 8.0),
                      child: Icon(Icons.pending, size: 36),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'その他',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: 'NotoSansJP',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     await showSlackVerificationModal(context);
      //   },
      //   tooltip: 'アカウントを追加',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class SlackUserTile extends StatelessWidget {
  final slackUser;

  SlackUserTile({required this.slackUser});

  @override
  Widget build(BuildContext context) {
    final slackTeamIconUrl = slackUser?.slackTeamIconUrl;

    return Padding(
      padding:
          const EdgeInsets.only(top: 6.0, left: 32.0, right: 8.0, bottom: 6.0),
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
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          'ワークスペースID: ${slackUser.slackTeamId}',
          style: const TextStyle(
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
