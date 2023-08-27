import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:equatable/equatable.dart';

class ChangeUsernameUsecase implements UseCase<BaseEntity, ChangeUsernameParams> {
  final ProfileRepository profileRepository;

  ChangeUsernameUsecase(this.profileRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(ChangeUsernameParams params) async {
    return await profileRepository.changeUsername(

        username: params.username,
        );
  }
}

class ChangeUsernameParams extends Equatable {
  final String username;

  const ChangeUsernameParams({
    required this.username,
  });

  @override
  List<Object> get props => [username];
}
