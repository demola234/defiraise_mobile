import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_remote_data_source.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';

typedef _CreateAccount = Future<CreateAccountResponse> Function();

class IAuthenticationRepository implements AuthenticationRepository {
  late AuthenticationRemoteDataSource remoteDataSource;

  IAuthenticationRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiError, CreateAccountResponse>> createAccount(
      {required String username, required String email}) async {
    return await _createAccount(() => remoteDataSource.createAccount(
      username,
      email,
        ));
  }

  Future<Either<ApiError, CreateAccountResponse>> _createAccount(
      _CreateAccount createAccount) async {
    try {
      final remoteWeather = await createAccount();
      // localDataSource.cacheWeather(remoteWeather);
      return Right(remoteWeather);
    } on ApiError catch (error) {
      return Left(error);
    }
  }
}
