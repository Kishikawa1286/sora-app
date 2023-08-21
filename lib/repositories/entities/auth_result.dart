class AuthResult {
  const AuthResult({
    required this.success,
    this.code,
    this.errorMessage,
  });

  final bool success;
  final String? code;
  final String? errorMessage;
}
