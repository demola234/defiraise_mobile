import 'dart:developer';

import 'package:defiraiser_mobile/features/profile/data/data_source/profile_remote_date_source.dart';
import 'package:defiraiser_mobile/features/profile/data/repositories/profile_repository.dart';
import 'package:defiraiser_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:defiraiser_mobile/features/profile/domain/usecases/change_password_usecase.dart';
import 'package:defiraiser_mobile/features/profile/domain/usecases/change_username_usecase.dart';
import 'package:defiraiser_mobile/features/profile/domain/usecases/get_privatekey_usecase.dart';
import 'package:defiraiser_mobile/features/profile/domain/usecases/set_biometrics_usecase.dart';
import 'package:defiraiser_mobile/features/profile/presentation/state/change_password_bloc/bloc/change_password_bloc.dart';
import 'package:defiraiser_mobile/features/profile/presentation/state/change_username_bloc/bloc/change_username_bloc.dart';
import 'package:defiraiser_mobile/features/profile/presentation/state/set_biometrics_bloc/set_biometrics_bloc_bloc.dart';
import 'package:get_it/get_it.dart';

import 'presentation/state/get_private_key_bloc/bloc/get_private_key_bloc.dart';

final profileLocator = GetIt.instance;

Future<void> registerProfileDependencies() async {
  log('User Profile Settings ...');

  //Repository
  profileLocator.registerLazySingleton<ProfileRepository>(
    () => IProfileRepository(
      remoteDataSource: profileLocator(),
    ),
  );

  // Bloc
  profileLocator.registerFactory(
    () => SetBiometricsBlocBloc(
      setBiometricsUsecase: profileLocator(),
    ),
  );
  profileLocator.registerFactory(
    () => ChangeUsernameBloc(
      changeUsernameUsecase: profileLocator(),
    ),
  );
  profileLocator.registerFactory(
    () => ChangePasswordBloc(
      changePasswordUsecase: profileLocator(),
    ),
  );
  profileLocator.registerFactory(
    () => GetPrivateKeyBloc(
      getPrivateUseCaseKey: profileLocator(),
    ),
  );

  // UseCase
  profileLocator.registerLazySingleton<SetBiometricsUsecase>(
    () => SetBiometricsUsecase(profileLocator()),
  );
  profileLocator.registerLazySingleton<ChangeUsernameUsecase>(
    () => ChangeUsernameUsecase(profileLocator()),
  );
  profileLocator.registerLazySingleton<ChangePasswordUsecase>(
    () => ChangePasswordUsecase(profileLocator()),
  );
  profileLocator.registerLazySingleton<GetPrivateUseCaseKey>(
    () => GetPrivateUseCaseKey(profileLocator()),
  );

  // DataSources
  profileLocator.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSoImpl(
      profileLocator(),
    ),
  );
}
