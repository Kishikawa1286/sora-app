import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/color_schemes.g.dart';
import 'package:sora/firebase_options.dart';
import 'package:sora/generate_route.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      try {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
      } on FirebaseAuthException catch (e) {
        // Sign out if user is disabled or not found
        // Such case happens when user is disabled/deleted from Firebase console
        // We can mainly see this case when we use development environment
        if (e.code == 'user-disabled' || e.code == 'user-not-found') {
          await FirebaseAuth.instance.signOut();
        }
      }

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );
      if (Platform.isAndroid) {
        await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      }

      runApp(
        ProviderScope(
          child: MaterialApp(
            title: 'mathlingo',
            onGenerateRoute: generateRoute,
            initialRoute: 'home',
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: lightColorScheme,
              fontFamily: 'NotoSansJP',
            ),
            darkTheme: ThemeData(
              useMaterial3: true,
              colorScheme: darkColorScheme,
              fontFamily: 'NotoSansJP',
            ),
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
