// 🐦 Flutter imports:
import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/routers/_routes.dart';
import 'package:defiraiser_mobile/features/authentication/auth_service_locator.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/forget_password/state/bloc/forget_password_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/bloc/login_state_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/set_profile_avatar/bloc/set_profile_avatar_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/bloc/sign_up_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/create_password_bloc/bloc/create_password_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/verify_bloc/bloc/verify_otp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.remove();
  await injector();
  await GetStorage.init();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginStateBloc>(
          create: (context) => authLocator<LoginStateBloc>(),
        ),
        BlocProvider<SignUpBloc>(
          create: (context) => authLocator<SignUpBloc>(),
        ),
        BlocProvider<ForgetPasswordBloc>(
          create: (context) => authLocator<ForgetPasswordBloc>(),
        ),
        BlocProvider<VerifyOtpBloc>(
          create: (context) => authLocator<VerifyOtpBloc>(),
        ),
        BlocProvider<CreatePasswordBloc>(
          create: (context) => authLocator<CreatePasswordBloc>(),
        ),
        BlocProvider<SetProfileAvatarBloc>(
          create: (context) => authLocator<SetProfileAvatarBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'DeFiRaiser',
        scrollBehavior: const _AppScrollBehavior(),
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
      ),
    );
  }
}

class _AppScrollBehavior extends ScrollBehavior {
  const _AppScrollBehavior();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}
