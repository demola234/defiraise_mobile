import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:equatable/equatable.dart';

class ChangePasswordUsecase implements UseCase<BaseEntity, ChangePasswordParams> {
  final ProfileRepository profileRepository;

  ChangePasswordUsecase(this.profileRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(ChangePasswordParams params) async {
    return await profileRepository.changePassword(
        newPassword: params.newPassword,
        oldPassword: params.oldPassword,
        );
  }
}

class ChangePasswordParams extends Equatable {
  final String newPassword;
  final String oldPassword;

  const ChangePasswordParams({
    required this.newPassword,
    required this.oldPassword,
  });

  @override
  List<Object> get props => [newPassword, oldPassword];
}
