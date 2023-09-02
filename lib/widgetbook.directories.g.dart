// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

import 'package:sora/pages/messages/reply_modal/use_cases.dart';
import 'package:sora/pages/messages/use_cases.dart';
import 'package:sora/pages/sign_in/use_cases.dart';
import 'package:widgetbook/widgetbook.dart';

final directories = <WidgetbookNode>[
  WidgetbookFolder(
    name: 'pages',
    children: [
      WidgetbookFolder(
        name: 'messages',
        children: [
          WidgetbookComponent(
            name: 'MessagesPage',
            useCases: [
              WidgetbookUseCase(
                name: 'empty',
                builder: (context) => messagesPageEmpty(context),
              ),
            ],
          ),
          WidgetbookFolder(
            name: 'reply_modal',
            children: [
              WidgetbookComponent(
                name: 'ReplyModalContent',
                useCases: [
                  WidgetbookUseCase(
                    name: 'default',
                    builder: (context) => replyModalDefault(context),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      WidgetbookFolder(
        name: 'sign_in',
        children: [
          WidgetbookComponent(
            name: 'SignInPage',
            useCases: [
              WidgetbookUseCase(
                name: 'default',
                builder: (context) => signInPageDefault(context),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
