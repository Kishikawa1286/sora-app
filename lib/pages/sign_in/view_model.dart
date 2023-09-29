import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/sign_in/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/auth_result.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final signInPageViewModelProvider =
    StateNotifierProvider.autoDispose<SignInPageViewModel, SignInPageModel>(
  (ref) => SignInPageViewModel(ref, const SignInPageModel()),
);

class SignInPageViewModel extends ViewModelStateNotifier<SignInPageModel> {
  SignInPageViewModel(Ref ref, super.model)
      : _authRepository = ref.read(authRepositoryProvider) {
    _authStateSubscription = _authRepository.userId.listen(
      (userId) {
        state = state.copyWith(authenticated: userId != null);
      },
    );
  }

  final AuthRepositoryBase _authRepository;
  late final StreamSubscription<String?> _authStateSubscription;

  void _handleAuthResult(AuthResult result) {
    if (result.success) {
      return;
    }
    if (result.code == 'loading') {
      return;
    }
    final errorMessage = result.errorMessage;
    if (errorMessage != null) {
      state = state.copyWith(errorMessage: errorMessage);
    }
  }

  Future<void> signInWithApple() async {
    try {
      final result = await _authRepository.signInWithApple();
      _handleAuthResult(result);
    } on Exception catch (e) {
      print(e);
      state = state.copyWith(errorMessage: '未知のエラーが発生しました');
    }
  }

  @override
  Future<void> dispose() async {
    await _authStateSubscription.cancel();
    super.dispose();
  }
}
