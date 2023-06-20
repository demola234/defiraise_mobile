import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class ResetPasswordUsecase implements UseCase<BaseEntity, Params> {
  final AuthenticationRepository authenticationRepository;

  ResetPasswordUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(Params params) async {
    return await authenticationRepository.resetPassword(
        username: params.username);
  }
}

class Params extends Equatable {
  final String username;
  const Params({
    required this.username,
  });

  @override
  List<Object> get props => [username];
}
