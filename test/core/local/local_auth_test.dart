import 'package:defiraiser_mobile/core/local/local.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'local_auth_test.mocks.dart';

@GenerateMocks([LocalAuthentication])
void main() {
  late LocalAuth localAuth;
  late MockLocalAuthentication mockLocalAuthentication;

  setUp(() {
    mockLocalAuthentication = MockLocalAuthentication();
    localAuth = ILocalAuth(mockLocalAuthentication);
  });

  group("authenticate", () {
    const String tLocalizedReason = "Please authenticate to continue";
    test("should authenticate Users", () async {
      // arrange
      when(mockLocalAuthentication.authenticate(
        localizedReason: tLocalizedReason,
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      )).thenAnswer((_) async => true);

      // act
      final result = await localAuth.authenticate();

      // assert
      verify(mockLocalAuthentication.authenticate(
        localizedReason: tLocalizedReason,
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      ));
      expect(result, true);
    });

    test("has bio metrics", () async {
      // arrange
      when(mockLocalAuthentication.getAvailableBiometrics())
          .thenAnswer((_) async => [BiometricType.face]);
      // act
      final result = await localAuth.hasAvailableBiometrics();

      // assert
      verify(mockLocalAuthentication.getAvailableBiometrics());
      expect(result, true);
    });
  });
}
