import 'package:defiraiser_mobile/core/cache/app_cache_key.dart';
import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:get_storage/get_storage.dart';

abstract class AppCache {
  saveUser(User userDetails);
  User getUserDetails();
  saveUserToken(String token);
  String getToken();
}

class AppCacheImpl implements AppCache {
  final box = GetStorage();
  @override
  String getToken() {
    try {
      final token = box.read(AppCacheKey.token);
      if (token != null) {
        return token;
      } else {
        final token = box.read(AppCacheKey.token) ?? '';
        return token;
      }
    } on CacheException {
      throw CacheException();
    }
  }

  @override
  User getUserDetails() {
    try {
      final userDetails = box.read(AppCacheKey.userDetails);
      print('Details $userDetails');
      if (userDetails != null) {
        return User.fromJson(userDetails);
      } else {
        return User();
      }
    } on CacheException {
      throw CacheException();
    }
  }

  @override
  saveUser(User userDetails) async {
    try {
      await box.write(AppCacheKey.userDetails, userDetails.toJson());
    } on CacheException {
      throw CacheException();
    }
  }

  @override
  saveUserToken(String token) async {
    try {
      await box.write(AppCacheKey.token, token);
    } on CacheException {
      throw CacheException();
    }
  }
}
