// 📦 Package imports:
part of 'secure.dart';

abstract class SecureStorage {
  Future<void> setHiveKey(String value, String hiveKey);
  Future<String?> getHiveKey(String hiveKey);
}

final secureStorageProvider = Provider<SecureStorage>((ref) {
  final flutterSecureStorage = ref.watch(flutterSecureStorageProvider);

  return ISecureStorage(flutterSecureStorage);
});

class ISecureStorage implements SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  ISecureStorage(this._flutterSecureStorage);

  @override
  Future<String?> getHiveKey( String hiveKey) async {
    return await _flutterSecureStorage.read(key: hiveKey);
  }

  @override
  Future<void> setHiveKey(String value, String hiveKey) async {
    await _flutterSecureStorage.write(key: hiveKey, value: value);
  }
}
