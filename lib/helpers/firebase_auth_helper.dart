import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseAuthHelperProvider = Provider<FirebaseAuthHelper>(
  (ref) => const FirebaseAuthHelper(),
);

class FirebaseAuthHelper {
  const FirebaseAuthHelper();

  FirebaseAuth get _auth => FirebaseAuth.instance;

  Future<User?> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  Future<void> signOut() => _auth.signOut();

  Stream<User?> get user => _auth.authStateChanges();
}
