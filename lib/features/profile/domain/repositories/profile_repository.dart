import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';

abstract class ProfileRepository {
  Future<Either<ApiError, BaseEntity>> setBiometrics({
    required bool isBiometrics,
  });
}
