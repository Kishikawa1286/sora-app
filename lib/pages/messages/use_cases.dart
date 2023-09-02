import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/model.dart';
import 'package:sora/pages/messages/view.dart';
import 'package:sora/pages/messages/view_model.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'empty', type: MessagesPage)
Widget messagesPageEmpty(BuildContext context) => ProviderScope(
      overrides: [
        messagesPageViewModelProvider.overrideWith(
          (ref) => MessagesPageViewModel(ref, const MessagesPageModel()),
        )
      ],
      child: const MessagesPage(),
    );
