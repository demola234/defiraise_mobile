import 'package:defiraiser_mobile/core/cache/app_cache.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/core/network_info/network_info.dart';
import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:defiraiser_mobile/features/authentication/auth_service_locator.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.I;

Future<void> injector() async {
  await registerAuthDependencies();
  sl
    //Network
    ..registerLazySingleton<NetworkProvider>(NetworkProviderImpl.new)

    // Local Auth
    ..registerLazySingleton<SecureStorage>(
        () => ISecureStorage(FlutterSecureStorage()))

    // AppCache
    ..registerLazySingleton<AppCache>(() => AppCacheImpl())

    //Network
    ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(InternetConnectionChecker()));
}
