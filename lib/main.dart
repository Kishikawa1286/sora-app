import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/color_schemes.g.dart';
import 'package:sora/firebase_options.dart';
import 'package:sora/pages/home/view.dart';
import 'package:sora/pages/loading_page/view.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      // Fixing the orientation of the screen
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );
      if (Platform.isAndroid) {
        // Hiding the status bar
        await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      }

      runApp(
        ProviderScope(
          child: MaterialApp(
            title: 'mathlingo',
            onGenerateRoute: _onGenerateRoute,
            initialRoute: 'home',
            theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
            darkTheme:
                ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          ),
        ),
      );
    },
    (error, stackTrace) async {
      print('runZonedGuarded: Caught error in my root zone.');
      print('error\n$error');
      print('stacktrace\n$stackTrace');
    },
  );
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) =>
    PageRouteBuilder<Widget>(
      settings: settings,
      pageBuilder: (_, __, ___) {
        final name = settings.name;
        if (name == null) {
          return const Home();
        }
        if (name == 'home') {
          return const Home();
        }
        return const LoadingPage();
      },
    );
