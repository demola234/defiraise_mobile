import 'package:defiraiser_mobile/core/cache/app_cache.dart';
import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:defiraiser_mobile/core/secure/secure_key.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';

abstract class AuthLocalDataSource {
  Future<LastUserCachedDetails> getLastUserData();

  Future<void> cacheUserLoginData({
    required LastUserCachedDetails lastUserCachedDetails,
  });

  Future<void> cacheUserDetails({
    required UserResponse user,
  });

  Future<void> clearUserCache();

  Future<String> getAccessToken();

  Future<void> saveAccessToken({
    required String token,
  });
}

class IAuthLocalDataSource implements AuthLocalDataSource {
  @override
  Future<void> cacheUserLoginData(
      {required LastUserCachedDetails lastUserCachedDetails}) async {
    final cache = sl<SecureStorage>();
    await cache.saveAuth(lastUserCachedDetails, SecureStorageKey().userLogin);
  }

  @override
  Future<void> clearUserCache() async {
    final cache = sl<SecureStorage>();

    await cache.clearAuthCredentials(SecureStorageKey().userLogin);
  }

  @override
  Future<LastUserCachedDetails> getLastUserData() async {
    final cache = sl<SecureStorage>();

    final saveDetails =
        await cache.getAuthCredentials(SecureStorageKey().userLogin);

    return saveDetails!;
  }

  @override
  Future<void> saveAccessToken({required String token}) async {
    final cache = sl<SecureStorage>();

    final saveDetails =
        await cache.saveAccessToken(token, SecureStorageKey().token);

    return saveDetails;
  }

  @override
  Future<String> getAccessToken() async {
    final cache = sl<SecureStorage>();

    final saveDetails = await cache.getAccessToken(SecureStorageKey().token);

    return saveDetails!;
  }

  @override
  Future<void> cacheUserDetails({required UserResponse user}) {
    final cache = sl<AppCache>();

    final saveDetails = cache.saveUser(user);

    return saveDetails!;
  }
}
