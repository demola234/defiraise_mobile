import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'secure_storage_test.mocks.dart';

@GenerateMocks([FlutterSecureStorage])
void main() {
  late ISecureStorage secureStorage;
  late MockFlutterSecureStorage mockFlutterSecureStorage;

  setUp(() {
    mockFlutterSecureStorage = MockFlutterSecureStorage();
    secureStorage = ISecureStorage(mockFlutterSecureStorage);
  });

  group('Storage', () {
    const String tKey = "key";
    const String tValue = "value";
    test("should save secure data", () async {
      () async {
        // arrange
        when(mockFlutterSecureStorage.write(key: tKey, value: tValue));
        // act
        await secureStorage.setHiveKey(tValue, tKey);
        // assert
        verify(mockFlutterSecureStorage.write(key: tKey, value: tValue));

        expect(secureStorage.setHiveKey(tValue, tKey), tValue);
      };
    });

    test("should read secure data", () async {
      // arrange
      when(mockFlutterSecureStorage.read(key: tKey))
          .thenAnswer((_) async => tValue);
      // act
      final result = await secureStorage.getHiveKey(tKey);
      // assert
      verify(mockFlutterSecureStorage.read(key: tKey));
      expect(result, tValue);
    });
  });
}
