import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class VerifyOtpUseCase implements UseCase<BaseEntity, VerifyParams> {
  final AuthenticationRepository authenticationRepository;

  VerifyOtpUseCase(this.authenticationRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(VerifyParams params) async {
    return await authenticationRepository.verifyOtp(
      otpCode: params.otpCode,
      username: params.username,
    );
  }
}

class   VerifyParams extends Equatable {
  final String username;
  final String otpCode;
  const VerifyParams({
    required this.otpCode,
    required this.username,
  });

  @override
  List<Object> get props => [otpCode, username];
}
