import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/auth_builder/view_model.dart';
import 'package:sora/pages/sign_in/view.dart';
import 'package:sora/widgetbook.dart';

class AuthBuilder extends HookConsumerWidget {
  const AuthBuilder({
    required this.builder,
    this.placeholder =
        const Scaffold(body: Center(child: CircularProgressIndicator())),
    super.key,
  });

  final Widget Function(BuildContext context) builder;
  final Widget placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInWidgetbook = ref.watch(isInWidgetbookProvider);
    final model = ref.watch(authBuilderViewModelProvider);
    final authenticated = model.authenticated;

    if (isInWidgetbook) {
      return Builder(builder: builder);
    }

    if (authenticated == null) {
      return placeholder;
    }

    if (!authenticated) {
      return const SignInPage();
    }

    return Builder(builder: builder);
  }
}
