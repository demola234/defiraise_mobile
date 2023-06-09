part of 'local.dart';

final localAuthProvider = Provider<ILocalAuth>((ref) {
  final localAuthentication = ref.watch(localAuthenticationAuthProvider);

  return ILocalAuth(localAuthentication);
});

abstract class LocalAuth {
  Future<bool> hasAvailableBiometrics();
  Future<bool> authenticate();
}

class ILocalAuth implements LocalAuth {
  final LocalAuthentication _localAuthentication;

  ILocalAuth(this._localAuthentication);

  @override
  Future<bool> hasAvailableBiometrics() async {
    final result = await _localAuthentication.getAvailableBiometrics();
    return result.isNotEmpty ? true : false;
  }

  @override
  Future<bool> authenticate() async {
    bool didAuthenticate = false;

    try {
      didAuthenticate = await _localAuthentication.authenticate(
        localizedReason: 'Please authenticate to continue',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
    } on PlatformException catch (e) {
      switch (e.code) {
        case auth_error.notAvailable:
          break;
        case auth_error.lockedOut:
          break;
        case auth_error.passcodeNotSet:
          break;
        case auth_error.notEnrolled:
          break;
        default:
      }
    }

    return didAuthenticate;
  }
}

final localAuthenticationAuthProvider = Provider<LocalAuthentication>((ref) {
  return LocalAuthentication();
});
