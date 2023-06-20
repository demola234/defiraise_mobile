import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class LoginUseCase implements UseCase<LoginResponse, Params> {
  final AuthenticationRepository authenticationRepository;

  LoginUseCase(this.authenticationRepository);

  @override
  Future<Either<ApiError, LoginResponse>> call(Params params) async {
    return await authenticationRepository.login(
        username: params.username, password: params.password);
  }
}

class Params extends Equatable {
  final String username;
  final String password;
  const Params({
    required this.password,
    required this.username,
  });

  @override
  List<Object> get props => [password, username];
}
