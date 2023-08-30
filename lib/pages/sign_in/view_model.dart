import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/sign_in/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/auth_result.dart';

final signInPageViewModelProvider =
    StateNotifierProvider.autoDispose<SignInPageViewModel, SignInPageModel>(
  SignInPageViewModel.new,
);

class SignInPageViewModel extends StateNotifier<SignInPageModel> {
  SignInPageViewModel(Ref ref)
      : _authRepository = ref.read(authRepositoryProvider),
        super(const SignInPageModel()) {
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

  Future<void> signInWithEmail() async {
    try {
      final result = await _authRepository.signInWithEmail(
        email: state.email,
        password: state.password,
      );
      _handleAuthResult(result);
    } on Exception catch (e) {
      print(e);
      state = state.copyWith(errorMessage: '未知のエラーが発生しました');
    }
  }

  Future<void> signUpWithEmail() async {
    try {
      final result = await _authRepository.signUpWithEmail(
        email: state.email,
        password: state.password,
      );
      _handleAuthResult(result);
    } on Exception catch (e) {
      print(e);
      state = state.copyWith(errorMessage: '未知のエラーが発生しました');
    }
  }

  void updateEmail(String? email) {
    if (email == null) {
      return;
    }
    state = state.copyWith(email: email);
  }

  void updatePassword(String? password) {
    if (password == null) {
      return;
    }
    state = state.copyWith(password: password);
  }

  @override
  Future<void> dispose() async {
    await _authStateSubscription.cancel();
    super.dispose();
  }
}
