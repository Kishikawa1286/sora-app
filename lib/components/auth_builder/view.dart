import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/auth_builder/view_model.dart';
import 'package:sora/widgetbook.dart';

class AuthBuilder extends HookConsumerWidget {
  const AuthBuilder({
    required this.builder,
    this.redirectRoute = 'sign_in',
    this.placeholder,
    super.key,
  });

  final Widget Function(BuildContext context) builder;
  final String redirectRoute;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInWidgetbook = ref.watch(isInWidgetbookProvider);
    final model = ref.watch(authBuilderViewModelProvider);
    final authenticated = model.authenticated;

    if (isInWidgetbook) {
      return Builder(builder: builder);
    }

    if (authenticated == null) {
      WidgetsBinding.instance.addPostFrameCallback((duration) async {
        await Navigator.pushReplacementNamed(context, redirectRoute);
      });
      return const Scaffold();
    }

    if (!authenticated) {
      return placeholder ??
          const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Builder(builder: builder);
  }
}
