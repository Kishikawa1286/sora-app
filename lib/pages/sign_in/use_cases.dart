import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/sign_in/model.dart';
import 'package:sora/pages/sign_in/view.dart';
import 'package:sora/pages/sign_in/view_model.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'default', type: SignInPage)
Widget signInPageDefault(BuildContext context) => ProviderScope(
      overrides: [
        signInPageViewModelProvider.overrideWith(
          (ref) => SignInPageViewModel(ref, const SignInPageModel()),
        )
      ],
      child: const SignInPage(),
    );
