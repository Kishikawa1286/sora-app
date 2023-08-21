import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/sign_in/view_model.dart';

class SignInForm extends HookConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(signInPageViewModelProvider.notifier);
    final state = ref.watch(signInPageViewModelProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: viewModel.updateEmail,
            decoration: InputDecoration(
              labelText: 'メールアドレス',
              errorText: state.errorMessage.isEmpty ? null : state.errorMessage,
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            onChanged: viewModel.updatePassword,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'パスワード',
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: viewModel.signInWithEmail,
            child: const Text('ログイン'),
          ),
        ],
      ),
    );
  }
}
