import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/core/network/endpoint_manager.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/check_user_entity/check_user_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';

abstract class AuthenticationRemoteDataSource {
  Future<CreateAccountResponse> createAccount(String username, String email);
  Future<LoginResponse> login(String username, String password);
  Future<BaseEntity> verifyOtp(
      {required String username, required String otpCode});
  Future<BaseEntity> resendOTP({required String userId});
  Future<BaseEntity> resetPassword({required String username});
  Future<BaseEntity> verifyPasswordResetCode(
      {required String username,
      required String otpCode,
      required String password});

  Future<BaseEntity> createUserPassword(
      {required String username,
      required bool biometrics,
      required String password});

  Future<CheckUserEntity> checkUsernameExists({
    required String username,
  });

  Future<UserResponse> setProfile({required int imageId});
  Future<UserResponse> getUserDetails();
}

class IAuthenticationRemoteDataSource
    implements AuthenticationRemoteDataSource {
  final NetworkProvider client;
  IAuthenticationRemoteDataSource(this.client);

  @override
  Future<CreateAccountResponse> createAccount(
      String username, String email) async {
    final response = await client.call(
        path: EndpointManager.createAccount,
        method: RequestMethod.post,
        body: {
          "username": username,
          "email": email,
        });
    final res = response!.data;
    if (response.statusCode == 200) {
      return CreateAccountResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<LoginResponse> login(String username, String password) async {
    final response = await client.call(
        path: EndpointManager.login,
        method: RequestMethod.post,
        body: {"username": username, "password": password});
    final res = response!.data;
    if (response.statusCode == 200) {
      return LoginResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> resendOTP({required String userId}) async {
    final response = await client.call(
        path: EndpointManager.resendOTP,
        method: RequestMethod.post,
        body: {"username": userId});
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> resetPassword({required String username}) async {
    final response = await client.call(
        path: EndpointManager.resetPassword,
        method: RequestMethod.post,
        body: {"username": username});
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> verifyOtp(
      {required String username, required String otpCode}) async {
    final response = await client.call(
        path: EndpointManager.verifyOTP,
        method: RequestMethod.post,
        body: {
          "username": username,
          "otp_code": otpCode,
        });
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> verifyPasswordResetCode(
      {required String username,
      required String otpCode,
      required String password}) async {
    final response = await client.call(
        path: EndpointManager.confirmReset,
        method: RequestMethod.post,
        body: {
          "username": username,
          "password": password,
          "otp_code": otpCode,
        });
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> createUserPassword(
      {required String username,
      required bool biometrics,
      required String password}) async {
    final response = await client.call(
        path: EndpointManager.createUserPassword,
        method: RequestMethod.post,
        body: {
          "username": username,
          "password": password,
          "biometrics": biometrics,
        });
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<CheckUserEntity> checkUsernameExists(
      {required String username}) async {
    final response = await client.call(
        path: EndpointManager.checkUsername,
        method: RequestMethod.post,
        body: {"username": username});
    final res = response!.data;
    if (response.statusCode == 200) {
      return CheckUserEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<UserResponse> setProfile({required int imageId}) async {
    final response = await client.call(
      path: EndpointManager.setProfileAvatar,
      method: RequestMethod.post,
      body: {'image_id': imageId},
    );
    final res = response!.data['data'];
    if (response.statusCode == 200) {
      return UserResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<UserResponse> getUserDetails() async {
    final response = await client.call(
      path: EndpointManager.getUser,
      method: RequestMethod.get,
    );
    final res = response!.data['data'];
    if (response.statusCode == 200) {
      return UserResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }
}
