import 'package:firebase_auth/firebase_auth.dart';

// See: https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithEmailAndPassword.html
String getEmailSignInErrorMessage(FirebaseAuthException exception) {
  switch (exception.code) {
    case 'invalid-email':
      return 'メールアドレスが無効です';
    case 'user-disabled':
      return 'このユーザーアカウントは無効になっています';
    case 'user-not-found':
      return 'このメールアドレスに対応するユーザーは存在しません';
    case 'wrong-password':
      return 'パスワードが間違っています';
    case 'email-already-in-use':
      return 'このメールアドレスは既に使用されています';
    default:
      return '未知のエラーが発生しました';
  }
}

// See: https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/createUserWithEmailAndPassword.html
String getEmailSignUpErrorMessage(FirebaseAuthException exception) {
  switch (exception.code) {
    case 'email-already-in-use':
      return '指定されたメールアドレスのアカウントが既に存在します';
    case 'invalid-email':
      return 'メールアドレスが無効です';
    case 'operation-not-allowed':
      return 'メール/パスワードのアカウントが有効になっていません';
    case 'weak-password':
      return 'パスワードが十分に強くありません';
    default:
      return '未知のエラーが発生しました';
  }
}
