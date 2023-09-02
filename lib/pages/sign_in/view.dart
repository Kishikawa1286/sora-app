import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/sign_in/components/sign_in_form.dart';
import 'package:sora/pages/sign_in/components/sign_up_form.dart';
import 'package:sora/pages/sign_in/view_model.dart';
import 'package:sora/widgetbook.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          bottom: const TabBar(
            tabs: [Tab(text: 'ログイン'), Tab(text: '新規登録')],
          ),
        ),
        body: const TabBarView(
          children: [SignInForm(), SignUpForm()],
        ),
      ),
    );
  }
}
