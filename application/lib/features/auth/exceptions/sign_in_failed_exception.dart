class SignInFailedException implements Exception {
  final String message;

  const SignInFailedException() : message = 'Failed to sign in';
}
