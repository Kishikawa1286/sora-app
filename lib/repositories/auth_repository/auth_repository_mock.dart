import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/auth_result.dart';

class AuthRepositoryMock extends AuthRepositoryBase {
  @override
  Stream<String?> get userId => Stream.value('mock_user_id');

  @override
  Future<AuthResult> signInWithEmail({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return const AuthResult(success: true);
  }

  @override
  Future<AuthResult> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return const AuthResult(success: true);
  }

  @override
  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
