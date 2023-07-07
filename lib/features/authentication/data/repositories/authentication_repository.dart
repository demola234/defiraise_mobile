import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_remote_data_source.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';

typedef _CreateAccount = Future<CreateAccountResponse> Function();
typedef _Login = Future<LoginResponse> Function();

class IAuthenticationRepository implements AuthenticationRepository {
  late AuthenticationRemoteDataSource remoteDataSource;

  IAuthenticationRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiError, CreateAccountResponse>> createAccount(
      {required String username,
      required String email,}) async {
    return await _createAccount(() => remoteDataSource.createAccount(
          username,
          email,
        ));
  }

  @override
  Future<Either<ApiError, LoginResponse>> login(
      {required String username, required String password}) async {
    return await _login(() => remoteDataSource.login(
          username,
          password,
        ));
  }

  Future<Either<ApiError, CreateAccountResponse>> _createAccount(
      _CreateAccount createAccount) async {
    try {
      final remoteCreateAccount = await createAccount();
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteCreateAccount);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  Future<Either<ApiError, LoginResponse>> _login(_Login login) async {
    try {
      final remoteLogin = await login();
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteLogin);
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
}
