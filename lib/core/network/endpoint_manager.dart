class EndpointManager {
  static const String _defifundr = 'http://localhost:8000';

  // Authentication
  static const String createAccount = '$_defifundr/users';
  static const String login = '$_defifundr/user/login';
  static const String verifyOTP = '$_defifundr/user/verify';
  static const String resendOTP = '$_defifundr/user/verify/resend';
  static const String resetPassword = '$_defifundr/user/password/reset';
  static const String confirmReset = '$_defifundr/user/password/reset/verify';
  static String checkUsername(username) =>
      '$_defifundr/user/checkUsername/$username';
  static const String renewAccessToken = '$_defifundr/token/renewAccess';
  static const String getUser = '$_defifundr/user';
}
