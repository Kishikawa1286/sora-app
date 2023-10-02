// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:sora/pages/messages/use_cases.dart' as _i2;
import 'package:sora/pages/sign_in/use_cases.dart' as _i3;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'pages',
    children: [
      _i1.WidgetbookFolder(
        name: 'messages',
        children: [
          _i1.WidgetbookComponent(
            name: 'MessagesPage',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'empty',
                builder: _i2.messagesPageEmpty,
              )
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'sign_in',
        children: [
          _i1.WidgetbookComponent(
            name: 'SignInPage',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'default',
                builder: _i3.signInPageDefault,
              )
            ],
          )
        ],
      ),
    ],
  )
];
