// 📦 Package imports:
part of 'secure.dart';

abstract class SecureStorage {
  Future<void> setHiveKey(String value, String hiveKey);
  Future<String?> getHiveKey(String hiveKey);
  Future<void> saveAuth(LastUserCachedDetails value, String hiveKey);
  clearAuthCredentials(String hiveKey);
  Future<void> saveAccessToken(String value, String hiveKey);
  Future<String?> getAccessToken(String hiveKey);
  Future<LastUserCachedDetails?> getAuthCredentials(String hiveKey);
  clearAccessToken(String hiveKey);
}

class ISecureStorage implements SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  ISecureStorage(this._flutterSecureStorage);

  @override
  Future<String?> getHiveKey(String hiveKey) async {
    return await _flutterSecureStorage.read(
      key: hiveKey,
     
    );
  }

  @override
  Future<void> setHiveKey(String value, String hiveKey) async {
    await _flutterSecureStorage.write(
      key: hiveKey,
      value: value,
      aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
          keyCipherAlgorithm:
              KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding),
      iOptions: IOSOptions(
        synchronizable: true,
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );
  }

  @override
  Future<LastUserCachedDetails?> getAuthCredentials(String hiveKey) async {
    try {
      final data = await _flutterSecureStorage.read(key: hiveKey);
      if (data != null) {
        return LastUserCachedDetails.fromJson(data);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> saveAuth(LastUserCachedDetails value, String hiveKey) async {
    await _flutterSecureStorage.write(
      key: hiveKey,
      value: jsonEncode(value.toJson()),
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
  }

  @override
  clearAuthCredentials(String hiveKey) {
    _flutterSecureStorage.delete(key: hiveKey);
  }

  @override
  clearAccessToken(String hiveKey) {
    _flutterSecureStorage.delete(key: hiveKey);
  }

  @override
  Future<String?> getAccessToken(String hiveKey) async {
    return await _flutterSecureStorage.read(key: hiveKey);
  }

  @override
  Future<void> saveAccessToken(String value, String hiveKey) async {
    await _flutterSecureStorage.write(
      key: hiveKey,
      value: value,
    );
  }
}
