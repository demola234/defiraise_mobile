class EndpointManager {
  static const String _defifundr = 'http://localhost:8080';

  // Authentication
  static const String createAccount = '$_defifundr/user';
  static const String login = '$_defifundr/user/login';
  static const String verifyOTP = '$_defifundr/user/verify';
  static const String resendOTP = '$_defifundr/user/verify/resend';
  static const String resetPassword = '$_defifundr/user/password/reset';
  static const String confirmReset = '$_defifundr/user/password/reset/verify';
  static String checkUsername = '$_defifundr/user/checkUsername';
  static const String renewAccessToken = '$_defifundr/token/renewAccess';
  static const String getUser = '$_defifundr/user';
  static const String createUserPassword = '$_defifundr/user/password';
  static const String setProfileAvatar = '$_defifundr/user/avatar/set';
}
