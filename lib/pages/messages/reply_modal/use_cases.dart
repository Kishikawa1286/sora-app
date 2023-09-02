import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/reply_modal/model.dart';
import 'package:sora/pages/messages/reply_modal/view.dart';
import 'package:sora/pages/messages/reply_modal/view_model.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'default', type: ReplyModalContent)
Widget replyModalDefault(BuildContext context) => ProviderScope(
      overrides: [
        replyModalViewModelProvider.overrideWith(
          (ref) => ReplyModalViewModel(
            ref,
            const ReplyModalModel(
              messageId: 'messageId',
              text: 'text',
            ),
          ),
        )
      ],
      child: const Scaffold(body: ReplyModalContent()),
    );
