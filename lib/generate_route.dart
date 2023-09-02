import 'package:flutter/material.dart';
import 'package:sora/components/auth_builder/view.dart';
import 'package:sora/pages/home/view.dart';
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
              case 'home/messages':
                return const Home();
              case 'home/manage_channels':
                return const Home();
              case 'home/options':
                return const Home();
              default:
                return const Home();
            }
          },
        );
      },
    );
