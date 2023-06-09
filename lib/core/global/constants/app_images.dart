class AppImages {
  static const _baseAssetUrl = 'assets/images/';

  //? Onboarding
  static String bank = '${_baseAssetUrl}bank.png';

  //! Avatars
  static String avatarPlaceholder = '${_baseAssetUrl}avatar1.png';
  static String avatar(int index) => '${_baseAssetUrl}avatar$index.png';
  static String background = '${_baseAssetUrl}background.png';
}
