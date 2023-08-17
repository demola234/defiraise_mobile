import 'dart:developer';

import 'package:defiraiser_mobile/features/profile/data/data_source/profile_remote_date_source.dart';
import 'package:defiraiser_mobile/features/profile/data/repositories/profile_repository.dart';
import 'package:defiraiser_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:get_it/get_it.dart';

final profileLocator = GetIt.instance;

Future<void> registerProfileDependencies() async {
  log('User Profile Settings ...');

  //Repository
  profileLocator.registerLazySingleton<ProfileRepository>(
    () => IProfileRepository(
      remoteDataSource: profileLocator(),
    ),
  );

  //UseCase
  // homeLocator.registerLazySingleton<CampaignCategoryUseCase>(
  //   () => CampaignCategoryUseCase(homeLocator()),
  // );

  // DataSources
  profileLocator.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSoImpl(
      profileLocator(),
    ),
  );
}
