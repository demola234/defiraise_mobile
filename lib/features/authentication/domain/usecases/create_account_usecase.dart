import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUserAccountUsecase implements UseCase<CreateAccountResponse, Params> {
  final AuthenticationRepository authenticationRepository;

  CreateUserAccountUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, CreateAccountResponse>> call(Params params) async {
    return await authenticationRepository.createAccount(
        username: params.username, email: params.email,);
  }
}

class Params extends Equatable {
  final String username;
  final String email;
  const Params({
    required this.email,
    required this.username,
  });

  @override
  List<Object> get props => [email, username];
}
