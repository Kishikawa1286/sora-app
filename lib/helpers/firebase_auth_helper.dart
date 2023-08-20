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
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> signOut() => _auth.signOut();

  Stream<User?> get user => _auth.authStateChanges();
}
