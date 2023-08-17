import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/check_user_entity/check_user_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class CheckUsernameExistUsecase
    implements UseCase<CheckUserEntity, CheckUsernameExistParams> {
  final AuthenticationRepository authenticationRepository;

  CheckUsernameExistUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, CheckUserEntity>> call(
      CheckUsernameExistParams params) async {
    return await authenticationRepository.checkUsernameExists(
        username: params.username);
  }
}

class CheckUsernameExistParams extends Equatable {
  final String username;

  const CheckUsernameExistParams({
    required this.username,
  });

  @override
  List<Object> get props => [username];
}
