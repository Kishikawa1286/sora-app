import 'package:flutter/material.dart';
import 'package:sora/repositories/entities/users_collection.dart';

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
            : ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(width: 56, height: 56, color: Colors.grey),
              ),
        title: Text(
          slackUser.slackTeamName,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          '${slackUser.slackTeamDomain}.slack.com',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
