import 'package:flutter/material.dart';
import 'package:sora/components/auth_builder/view.dart';
import 'package:sora/pages/account_management/view.dart';
import 'package:sora/pages/home/view.dart';
import 'package:sora/pages/other_settings/view.dart';
import 'package:sora/pages/sign_in/view.dart';

Route<dynamic> generateRoute(RouteSettings settings) =>
    MaterialPageRoute<Widget>(
      settings: settings,
      builder: (context) {
        final name = settings.name;

        if (name == 'sign_in') {
          return const SignInPage();
        }

        return AuthBuilder(
          builder: (context) {
            if (name == null) {
              return const Home();
            }
            switch (name) {
              case 'home':
                return const Home();
              case 'account_management':
                return const AccountManagementPage();
              case 'other_settings':
                return const OtherSettingsPage();
              default:
                return const Home();
            }
          },
        );
      },
    );
