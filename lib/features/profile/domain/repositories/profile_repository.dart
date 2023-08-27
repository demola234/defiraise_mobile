import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/profile/domain/entities/address_entity/address_entity.dart';

abstract class ProfileRepository {
  Future<Either<ApiError, BaseEntity>> setBiometrics({
    required bool isBiometrics,
  });

  Future<Either<ApiError, BaseEntity>> changeUsername({
    required String username,
  });

  Future<Either<ApiError, BaseEntity>> changePassword({
    required String oldPassword,
    required String newPassword,
  });
  
  Future<Either<ApiError, AddressEntity>> getPrivateKey({
    required String password,
  });
}
