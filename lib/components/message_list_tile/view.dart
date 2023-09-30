import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sora/components/network_image/view.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/utils/format/date_formatting.dart';

class MessageListTile extends StatelessWidget {
  const MessageListTile({
    required this.message,
    this.title,
    this.subtitle,
    super.key,
  });

  final Message message;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) => ListTile(
        leading: PlaceholdedNetworkImage(url: message.senderIconUrl),
        title: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    title ?? message.senderName,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  if (message.isScheduleAdjustment) const SizedBox(width: 8),
                  if (message.isScheduleAdjustment)
                    SvgPicture.asset(
                      'assets/images/slider-icon/calendar-icon.svg',
                    ),
                ],
              ),
            ),
            Text(
              formatWithWeekday(message.createdAt.toDate()),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        subtitle: Text(
          subtitle ?? message.summary,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      );
}
