import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/color_schemes.g.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/auth_repository/auth_repository_mock.dart';
import 'package:sora/repositories/chatgpt_repository/chatgpt_repository.dart';
import 'package:sora/repositories/chatgpt_repository/chatgpt_repository_mock.dart';
import 'package:sora/repositories/message_repository/message_repository.dart';
import 'package:sora/repositories/message_repository/message_repository_mock.dart';
import 'package:sora/repositories/slack_repository/slack_repository.dart';
import 'package:sora/repositories/slack_repository/slack_repository_mock.dart';
import 'package:sora/widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

final isInWidgetbookProvider = Provider<bool>((ref) => false);

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) => Widgetbook.material(
        initialRoute: '/pages',
        directories: directories,
        appBuilder: (context, child) => ProviderScope(
          overrides: [
            isInWidgetbookProvider.overrideWithValue(true),
            authRepositoryProvider.overrideWith((ref) => AuthRepositoryMock()),
            chatGPTRepositoryProvider
                .overrideWith((ref) => ChatGPTRepositoryMock()),
            messageRepositoryProvider
                .overrideWith((ref) => MessageRepositoryMock()),
            slackRepositoryProvider
                .overrideWith((ref) => SlackRepositoryMock()),
          ],
          child: child,
        ),
        addons: [
          MaterialThemeAddon(
            themes: [
              WidgetbookTheme(
                name: 'Light',
                data: ThemeData(
                  useMaterial3: true,
                  colorScheme: lightColorScheme,
                  fontFamily: 'NotoSansJP',
                ),
              ),
              WidgetbookTheme(
                name: 'Dark',
                data: ThemeData(
                  useMaterial3: true,
                  colorScheme: darkColorScheme,
                  fontFamily: 'NotoSansJP',
                ),
              ),
            ],
          ),
        ],
      );
}
