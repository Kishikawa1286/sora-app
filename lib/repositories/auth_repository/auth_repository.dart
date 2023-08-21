import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/firebase_auth_helper.dart';
import 'package:sora/repositories/auth_repository/handle_exception.dart';
import 'package:sora/repositories/entities/auth_result.dart';

abstract class AuthRepositoryBase {
  Stream<String?> get userId;

  Future<AuthResult> signUpWithEmail({
    required String email,
    required String password,
  });

  Future<AuthResult> signInWithEmail({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(ref.read(firebaseAuthHelperProvider)),
);

class AuthRepository implements AuthRepositoryBase {
  const AuthRepository(this._firebaseAuthHelper);

  final FirebaseAuthHelper _firebaseAuthHelper;

  @override
  Stream<String?> get userId => _firebaseAuthHelper.user.map((u) => u?.uid);

  @override
  Future<AuthResult> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuthHelper.signUpWithEmail(
        email: email,
        password: password,
      );
      return const AuthResult(success: true);
    } on FirebaseAuthException catch (e) {
      return AuthResult(
        success: false,
        code: e.code,
        errorMessage: getEmailSignUpErrorMessage(e),
      );
    }
  }

  @override
  Future<AuthResult> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuthHelper.signInWithEmail(
        email: email,
        password: password,
      );
      return const AuthResult(success: true);
    } on FirebaseAuthException catch (e) {
      return AuthResult(
        success: false,
        code: e.code,
        errorMessage: getEmailSignInErrorMessage(e),
      );
    }
  }

  @override
  Future<void> signOut() => _firebaseAuthHelper.signOut();
}
