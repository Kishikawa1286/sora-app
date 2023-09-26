import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:sora/utils/crypto/crypto.dart' as crypto;

final firebaseAuthHelperProvider = Provider<FirebaseAuthHelper>(
  (ref) => const FirebaseAuthHelper(),
);

class FirebaseAuthHelper {
  const FirebaseAuthHelper();

  FirebaseAuth get _auth => FirebaseAuth.instance;

  // See: https://firebase.flutter.dev/docs/auth/social#apple
  Future<User?> signInWithApple() async {
    final rawNonce = crypto.generateNonce();
    final nonce = crypto.sha256ofString(rawNonce);

    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    final oauthCredential = OAuthProvider('apple.com').credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    final userCredential = await _auth.signInWithCredential(oauthCredential);
    return userCredential.user;
  }

  Future<void> signOut() => _auth.signOut();

  Stream<User?> get user => _auth.authStateChanges();
}
