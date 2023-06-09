class EndpointManager {
  static const String _homezyUrl = 'http://localhost:8000';

  // Authentication
  static const String signUpUser = '$_homezyUrl/users/signup';
  static const String verifyEmailOtp = '$_homezyUrl/users/verifyOtp';
  static const String resendOtp = '$_homezyUrl/users/resendOtp';
  static const String createPassword = '$_homezyUrl/users/createPassword';
  static const String login = '$_homezyUrl/users/login';
}
