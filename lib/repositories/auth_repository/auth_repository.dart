import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/firebase_auth_helper.dart';
import 'package:sora/repositories/auth_repository/handle_exception.dart';
import 'package:sora/repositories/entities/auth_result.dart';
import 'package:sora/utils/loading_state/loading_state_handler.dart';

abstract class AuthRepositoryBase {
  Stream<String?> get userId;

  Future<AuthResult> signInWithApple();

  Future<void> signOut();
}

final authRepositoryProvider = Provider<AuthRepositoryBase>(
  (ref) => AuthRepository(
    ref.read(firebaseAuthHelperProvider),
    ref.watch(loadingStateProvider('auth_repository').notifier),
  ),
);

class AuthRepository implements AuthRepositoryBase {
  const AuthRepository(this._firebaseAuthHelper, this._loadingStateHandler);

  final FirebaseAuthHelper _firebaseAuthHelper;
  final LoadingStateHandler _loadingStateHandler;

  @override
  Stream<String?> get userId => _firebaseAuthHelper.user.map((u) => u?.uid);

  @override
  Future<AuthResult> signInWithApple() async {
    try {
      return _loadingStateHandler.runWithLoading(
        () async {
          await _firebaseAuthHelper.signInWithApple();
          return const AuthResult(success: true);
        },
        () =>
            const AuthResult(success: false, code: 'loading', errorMessage: ''),
      );
    } on FirebaseAuthException catch (e) {
      return AuthResult(
        success: false,
        code: e.code,
        errorMessage: getEmailSignUpErrorMessage(e),
      );
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _loadingStateHandler.runWithLoading(
        _firebaseAuthHelper.signOut,
        () => {},
      );
    } on Exception catch (e) {
      print(e);
    }
  }
}
