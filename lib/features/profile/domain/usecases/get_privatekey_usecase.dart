import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/profile/domain/entities/address_entity/address_entity.dart';
import 'package:defiraiser_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:equatable/equatable.dart';

class GetPrivateUseCaseKey implements UseCase<AddressEntity, GetPrivateKeyParams> {
  final ProfileRepository profileRepository;

  GetPrivateUseCaseKey(this.profileRepository);

  @override
  Future<Either<ApiError, AddressEntity>> call(
      GetPrivateKeyParams params) async {
    return await profileRepository.getPrivateKey(
      password: params.password,
    );
  }
}

class GetPrivateKeyParams extends Equatable {
  final String password;

  const GetPrivateKeyParams({
    required this.password,
  });

  @override
  List<Object> get props => [password];
}
