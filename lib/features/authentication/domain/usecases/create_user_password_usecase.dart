import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUserPasswordUsecase implements UseCase<BaseEntity, CreatePasswordParams> {
  final AuthenticationRepository authenticationRepository;

  CreateUserPasswordUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(CreatePasswordParams params) async {
    return await authenticationRepository.createUserPassword(
        password: params.password,
        biometrics: params.biometrics,
        username: params.username);
  }
}

class CreatePasswordParams extends Equatable {
  final String username;
  final String password;
  final bool biometrics;
  const CreatePasswordParams({
    required this.password,
    required this.biometrics,
    required this.username,
  });

  @override
  List<Object> get props => [username, password, biometrics];
}
