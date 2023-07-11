import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class ProfileAvatarUsecase implements UseCase<User, SetProfileAvatarParams> {
  final AuthenticationRepository authenticationRepository;

  ProfileAvatarUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, User>> call(SetProfileAvatarParams params) async {
    return await authenticationRepository.setProfileAvatar(
        imageId: params.imageId);
  }
}

class SetProfileAvatarParams extends Equatable {
  final int imageId;

  const SetProfileAvatarParams({
    required this.imageId,
  });

  @override
  List<Object> get props => [imageId];
}
