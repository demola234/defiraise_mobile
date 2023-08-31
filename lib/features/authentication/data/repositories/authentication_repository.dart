import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_local_datasource.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_remote_data_source.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/check_user_entity/check_user_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';

typedef _CreateAccount = Future<CreateAccountResponse> Function();
typedef _Login = Future<LoginResponse> Function();

class IAuthenticationRepository implements AuthenticationRepository {
  late AuthenticationRemoteDataSource remoteDataSource;
  late AuthLocalDataSource authLocalDataSource;

  IAuthenticationRepository({
    required this.remoteDataSource,
    required this.authLocalDataSource,
  });

  @override
  Future<Either<ApiError, CreateAccountResponse>> createAccount({
    required String username,
    required String email,
  }) async {
    return await _createAccount(() => remoteDataSource.createAccount(
          username,
          email,
        ));
  }

  @override
  Future<Either<ApiError, LoginResponse>> login(
      {required String username, required String password}) async {
    try {
      final remoteLogin = await remoteDataSource.login(username, password);
      final lastCacheDetails = LastUserCachedDetails(
        password: password,
        username: username,
        email: remoteLogin.data!.user.email,
        isBiometric: remoteLogin.data!.user.biometrics,
      );

      await authLocalDataSource.cacheUserLoginData(
          lastUserCachedDetails: lastCacheDetails);
      // await authLocalDataSource.cacheUserDetails(user: remoteLogin.data!.user);
      // await authLocalDataSource.saveAccessToken(
      //     token: remoteLogin.data!.accessToken);

      return Right(remoteLogin);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  Future<Either<ApiError, CreateAccountResponse>> _createAccount(
      _CreateAccount createAccount) async {
    try {
      final remoteCreateAccount = await createAccount();

      return Right(remoteCreateAccount);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> verifyOtp(
      {required String username, required String otpCode}) async {
    try {
      final remoteVerifyOtp = await remoteDataSource.verifyOtp(
        otpCode: otpCode,
        username: username,
      );
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteVerifyOtp);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> resendOTP(
      {required String userId}) async {
    try {
      final remoteVerifyOtp = await remoteDataSource.resendOTP(userId: userId);
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteVerifyOtp);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> resetPassword(
      {required String username}) async {
    try {
      final remoteVerifyOtp =
          await remoteDataSource.resetPassword(username: username);
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteVerifyOtp);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> verifyPasswordResetCode(
      {required String username,
      required String otpCode,
      required String password}) async {
    try {
      final remoteVerifyOtp = await remoteDataSource.verifyPasswordResetCode(
        username: username,
        otpCode: otpCode,
        password: password,
      );
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteVerifyOtp);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> createUserPassword(
      {required String username,
      required bool biometrics,
      required String password}) async {
    try {
      final remoteVerifyOtp = await remoteDataSource.createUserPassword(
        username: username,
        biometrics: biometrics,
        password: password,
      );
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteVerifyOtp);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, CheckUserEntity>> checkUsernameExists(
      {required String username}) async {
    try {
      final remoteVerifyOtp = await remoteDataSource.checkUsernameExists(
        username: username,
      );
      return Right(remoteVerifyOtp);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, UserResponse>> setProfileAvatar(
      {required int imageId}) async {
    try {
      final remoteVerifyOtp =
          await remoteDataSource.setProfile(imageId: imageId);
      return Right(remoteVerifyOtp);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, UserResponse>> getUserDetails() async {
    try {
      final remoteUser = await remoteDataSource.getUserDetails();
      await authLocalDataSource.cacheUserDetails(user: remoteUser);
      return Right(remoteUser);
    } on ApiError catch (error) {
      return Left(error);
    }
  }
}
