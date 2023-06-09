// 📦 Package imports:
part of 'secure.dart';

final flutterSecureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  AndroidOptions androidOptions = const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  IOSOptions iosOptions = const IOSOptions(
    accessibility: KeychainAccessibility.first_unlock,
  );

  return FlutterSecureStorage(
    aOptions: androidOptions,
    iOptions: iosOptions,
  );
});
