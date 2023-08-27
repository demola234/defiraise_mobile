import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/core/network/endpoint_manager.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:defiraiser_mobile/core/secure/secure_key.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/profile/domain/entities/address_entity/address_entity.dart';
import 'package:dio/dio.dart';

abstract class ProfileRemoteDataSource {
  Future<BaseEntity> setBiometrics({required bool biometrics});
  Future<BaseEntity> changeUsername({required String username});
  Future<BaseEntity> changePassword(
      {required String oldPassword, required String newPassword});
  Future<AddressEntity> getPrivateKey({required String password});
}

class ProfileRemoteDataSoImpl implements ProfileRemoteDataSource {
  final NetworkProvider client;
  ProfileRemoteDataSoImpl(this.client);

  @override
  Future<BaseEntity> setBiometrics({required bool biometrics}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.setBiometrics,
      method: RequestMethod.post,
      body: {
        'biometrics': biometrics,
      },
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> changeUsername({required String username}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.changeUsername,
      method: RequestMethod.post,
      body: {
        'username': username,
      },
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> changePassword(
      {required String oldPassword, required String newPassword}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.changePassword,
      method: RequestMethod.post,
      body: {
        'old_password': oldPassword,
        'new_password': newPassword,
      },
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<AddressEntity> getPrivateKey({required String password}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getPrivateKey,
      method: RequestMethod.post,
      body: {
        'password': password,
      },
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return AddressEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }
}
