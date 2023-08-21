import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/firebase_auth_helper.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(
    ref.read(firebaseAuthHelperProvider),
  ),
);

class AuthRepository {
  AuthRepository(this._firebaseAuthHelper);

  final FirebaseAuthHelper _firebaseAuthHelper;

  Stream<String?> get userId => _firebaseAuthHelper.user.map((u) => u?.uid);

  Future<void> signUpWithEmail({
    required String email,
    required String password,
  }) =>
      _firebaseAuthHelper.signUpWithEmail(
        email: email,
        password: password,
      );

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) =>
      _firebaseAuthHelper.signInWithEmail(
        email: email,
        password: password,
      );

  Future<void> signOut() => _firebaseAuthHelper.signOut();
}
