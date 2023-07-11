import 'dart:developer';

import 'package:defiraiser_mobile/core/local/local.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_local_datasource.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_remote_data_source.dart';
import 'package:defiraiser_mobile/features/authentication/data/repositories/authentication_repository.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/check_user_exist_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_account_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_user_password_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/login_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/resend_otp_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/reset_password_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/set_profile_avatar_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/forget_password/state/bloc/forget_password_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/set_profile_avatar/bloc/set_profile_avatar_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/bloc/sign_up_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';

import 'domain/usecases/verify_password_reset.dart';
import 'presentation/login/states/bloc/login_state_bloc.dart';
import 'presentation/signup/states/create_password_bloc/bloc/create_password_bloc.dart';
import 'presentation/signup/states/verify_bloc/bloc/verify_otp_bloc.dart';

final authLocator = GetIt.instance;

Future<void> registerAuthDependencies() async {
  log('registering auth dep');
  authLocator.registerFactory(
    () => LoginStateBloc(
      loginUseCase: authLocator(),
    ),
  );

  authLocator.registerFactory(
    () => SignUpBloc(
      createUserAccountUsecase: authLocator(),
      verifyOtpUseCase: authLocator(),
      createPasswordUseCase: authLocator(),
      resendOtpUsecase: authLocator(),
      checkUsernameExistUsecase: authLocator(),
    ),
  );

  authLocator.registerFactory(
    () => ForgetPasswordBloc(
      verifyPasswordResetUsecase: authLocator(),
      resetPasswordUsecase: authLocator(),
    ),
  );

  authLocator.registerFactory(
    () => CreatePasswordBloc(
      createUserPasswordUsecase: authLocator(),
    ),
  );

  authLocator.registerFactory(
    () => VerifyOtpBloc(
      verifyOtpUseCase: authLocator(),
    ),
  );

    authLocator.registerFactory(
    () => SetProfileAvatarBloc(
      profileAvatarUsecase: authLocator(),
    ),
  );

  authLocator.registerFactory<LocalAuthentication>(
    () => LocalAuthentication(),
  );

  authLocator.registerLazySingleton<LocalAuth>(
    () => ILocalAuth(authLocator()),
  );

  //Repository
  authLocator.registerLazySingleton<AuthenticationRepository>(
    () => IAuthenticationRepository(
      remoteDataSource: authLocator(),
      authLocalDataSource: authLocator(),
    ),
  );

  //Repository
  authLocator.registerLazySingleton<AuthLocalDataSource>(
    () => IAuthLocalDataSource(),
  );

  //UseCase
  authLocator.registerLazySingleton<CreateUserAccountUsecase>(
    () => CreateUserAccountUsecase(authLocator()),
  );


  authLocator.registerLazySingleton<ProfileAvatarUsecase>(
    () => ProfileAvatarUsecase(authLocator()),
  );

  authLocator.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(authLocator()),
  );

  authLocator.registerLazySingleton<CreateUserPasswordUsecase>(
    () => CreateUserPasswordUsecase(
      authLocator(),
    ),
  );

  authLocator.registerLazySingleton<ResendOtpUsecase>(
    () => ResendOtpUsecase(authLocator()),
  );

  authLocator.registerLazySingleton<ResetPasswordUsecase>(
    () => ResetPasswordUsecase(authLocator()),
  );

  authLocator.registerLazySingleton<VerifyOtpUseCase>(
    () => VerifyOtpUseCase(authLocator()),
  );

  authLocator.registerLazySingleton<VerifyPasswordResetUsecase>(
    () => VerifyPasswordResetUsecase(authLocator()),
  );

  authLocator.registerLazySingleton<CheckUsernameExistUsecase>(
    () => CheckUsernameExistUsecase(authLocator()),
  );

  // DataSources
  authLocator.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => IAuthenticationRemoteDataSource(
      authLocator(),
    ),
  );
}
