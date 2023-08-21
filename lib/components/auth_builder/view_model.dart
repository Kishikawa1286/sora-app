import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/auth_builder/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';

final authBuilderViewModelProvider =
    StateNotifierProvider<AuthBuilderViewModel, AuthBuilderModel>(
  AuthBuilderViewModel.new,
);

class AuthBuilderViewModel extends StateNotifier<AuthBuilderModel> {
  AuthBuilderViewModel(Ref ref)
      : _authRepository = ref.read(authRepositoryProvider),
        super(const AuthBuilderModel()) {
    _authStateSubscription = _authRepository.userId.listen(
      (userId) {
        state = state.copyWith(authenticated: userId != null);
      },
    );
  }

  final AuthRepositoryBase _authRepository;
  late final StreamSubscription<String?> _authStateSubscription;

  @override
  Future<void> dispose() async {
    await _authStateSubscription.cancel();
    super.dispose();
  }
}
