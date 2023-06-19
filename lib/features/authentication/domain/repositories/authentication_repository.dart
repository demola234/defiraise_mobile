import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';

abstract class AuthenticationRepository {
  Future<Either<ApiError, CreateAccountResponse>> createAccount(
      {required String username,required String email});
}
