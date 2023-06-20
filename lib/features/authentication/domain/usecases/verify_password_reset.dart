import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class VerifyPasswordResetUsecase implements UseCase<BaseEntity, Params> {
  final AuthenticationRepository authenticationRepository;

  VerifyPasswordResetUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(Params params) async {
    return await authenticationRepository.verifyPasswordResetCode(
        otpCode: params.otpCode,
        password: params.password,
        username: params.username);
  }
}

class Params extends Equatable {
  final String username;
  final String password;
  final String otpCode;
  const Params({
    required this.username,
    required this.password,
    required this.otpCode,
  });

  @override
  List<Object> get props => [username, otpCode, password];
}
