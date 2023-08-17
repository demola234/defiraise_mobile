import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class ResendOtpUsecase implements UseCase<BaseEntity, ResendOtpParams> {
  final AuthenticationRepository authenticationRepository;

  ResendOtpUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(ResendOtpParams params) async {
    return await authenticationRepository.resendOTP(userId: params.username);
  }
}

class ResendOtpParams extends Equatable {
  final String username;
  const ResendOtpParams({
    required this.username,
  });

  @override
  List<Object> get props => [username];
}
