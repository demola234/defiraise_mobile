import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/profile/data/data_source/profile_remote_date_source.dart';
import 'package:defiraiser_mobile/features/profile/domain/entities/address_entity/address_entity.dart';
import 'package:defiraiser_mobile/features/profile/domain/repositories/profile_repository.dart';

class IProfileRepository implements ProfileRepository {
  late ProfileRemoteDataSource remoteDataSource;

  IProfileRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiError, BaseEntity>> setBiometrics(
      {required bool isBiometrics}) async {
    try {
      final remoteCampaign =
          await remoteDataSource.setBiometrics(biometrics: isBiometrics);
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }
  
  @override
  Future<Either<ApiError, BaseEntity>> changeUsername({required String username}) async {
    try {
      final remoteCampaign =
          await remoteDataSource.changeUsername(username: username);
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }
  
  @override
  Future<Either<ApiError, BaseEntity>> changePassword({required String oldPassword, required String newPassword}) async {
    try {
      final remoteCampaign =
          await remoteDataSource.changePassword(oldPassword: oldPassword, newPassword: newPassword);
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }
  
  @override
  Future<Either<ApiError, AddressEntity>> getPrivateKey({required String password}) async {
    try {
      final remoteCampaign =
          await remoteDataSource.getPrivateKey(password: password);
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }
}
