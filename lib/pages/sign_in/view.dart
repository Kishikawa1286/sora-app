import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:sora/pages/sign_in/view_model.dart';
import 'package:sora/widgetbook.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(signInPageViewModelProvider.notifier);
    final isInWidgetbook = ref.watch(isInWidgetbookProvider);
    final model = ref.watch(signInPageViewModelProvider);
    final authenticated = model.authenticated;

    if (authenticated && !isInWidgetbook) {
      WidgetsBinding.instance.addPostFrameCallback((duration) async {
        await Navigator.pushReplacementNamed(context, 'home');
      });
      return const Scaffold();
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sora', style: TextStyle(fontSize: 24)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SignInWithAppleButton(
                onPressed: viewModel.signInWithApple,
                text: 'Appleでサインイン',
              )
            ],
          ),
        ),
      ),
    );
  }
}
