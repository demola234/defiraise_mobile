import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<BaseEntity> setBiometrics();
}

class ProfileRemoteDataSoImpl implements ProfileRemoteDataSource {
  final NetworkProvider client;
  ProfileRemoteDataSoImpl(this.client);

  @override
  Future<BaseEntity> setBiometrics() {
    // TODO: implement setBiometrics
    throw UnimplementedError();
  }
}
