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
  static const String getCampaign = '$_defifundr/campaigns/latestCampaigns';
  static const String getDonation = '$_defifundr/campaigns';
  static const String getMyCampaign = '$_defifundr/campaigns/owner';
  static const String getCategories = '$_defifundr/campaigns/categories';
  static const String getCurrentEthPrice = '$_defifundr/currentPrice';
  static const String makeDonation = '$_defifundr/campaigns/donate';
  static String getDonors(String id) => '$_defifundr/campaigns/donation/$id';
  static String getCampaignsByCategory(String id) =>
      '$_defifundr/campaigns/categories/$id';
  static const String createDonation = '$_defifundr/campaigns';
}
