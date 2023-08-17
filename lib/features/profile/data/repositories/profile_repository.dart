import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/profile/data/data_source/profile_remote_date_source.dart';
import 'package:defiraiser_mobile/features/profile/domain/repositories/profile_repository.dart';

class IProfileRepository implements ProfileRepository {
  late ProfileRemoteDataSource remoteDataSource;

  IProfileRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiError, BaseEntity>> setBiometrics({required bool isBiometrics}) {
    // TODO: implement setBiometrics
    throw UnimplementedError();
  }
}
