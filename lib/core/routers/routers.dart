part of '_routes.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: RouteConstants.initial,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
          path: '/',
          name: RouteConstants.initial,
          builder: (context, state) => StartUpScreen(
                key: state.pageKey,
              ),
          routes: [
            GoRoute(
              path: 'login',
              name: RouteConstants.login,
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  key: state.pageKey,
                  child: const LoginScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Change the opacity of the screen using a Curve based on the the animation's
                    // value
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                );
              },
              routes: [
                GoRoute(
                    path: 'resetPassword',
                    name: RouteConstants.resetPassword,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        key: state.pageKey,
                        child: const ResetEmailScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          // Change the opacity of the screen using a Curve based on the the animation's
                          // value
                          return FadeTransition(
                            opacity: CurveTween(curve: Curves.easeInOutCirc)
                                .animate(animation),
                            child: child,
                          );
                        },
                      );
                    },
                    routes: [
                      GoRoute(
                        path: 'resetOtp',
                        name: RouteConstants.resetOtp,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            child: const ResetOTPScreen(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              // Change the opacity of the screen using a Curve based on the the animation's
                              // value
                              return FadeTransition(
                                opacity: CurveTween(curve: Curves.easeInOutCirc)
                                    .animate(animation),
                                child: child,
                              );
                            },
                          );
                        },
                      ),
                    ]),
                GoRoute(
                  path: 'resetConfirmPassword',
                  name: RouteConstants.resetConfirmPassword,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      child: const ResetPasswordScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        // Change the opacity of the screen using a Curve based on the the animation's
                        // value
                        return FadeTransition(
                          opacity: CurveTween(curve: Curves.easeInOutCirc)
                              .animate(animation),
                          child: child,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: 'register',
              name: RouteConstants.register,
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  key: state.pageKey,
                  child: const CreateAccountScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Change the opacity of the screen using a Curve based on the the animation's
                    // value
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                );
              },
            ),
            GoRoute(
              path: 'verifyEmail',
              name: RouteConstants.verifyEmail,
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  key: state.pageKey,
                  child: const VerifyOTPScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Change the opacity of the screen using a Curve based on the the animation's
                    // value
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                );
              },
            ),
            GoRoute(
              path: 'confirmPassword',
              name: RouteConstants.confirmPassword,
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  key: state.pageKey,
                  child: const CreatePasswordScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Change the opacity of the screen using a Curve based on the the animation's
                    // value
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                );
              },
            ),
            GoRoute(
              path: 'selectAvatar',
              name: RouteConstants.selectAvatar,
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  key: state.pageKey,
                  child: const SelectAvatarScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Change the opacity of the screen using a Curve based on the the animation's
                    // value
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                );
              },
            ),
            GoRoute(
              path: 'home',
              name: RouteConstants.home,
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  key: state.pageKey,
                  child: const BottomNavigationController(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Change the opacity of the screen using a Curve based on the the animation's
                    // value
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                );
              },
            ),
          ]),
    ],
  );

  static GoRouter get router => _router;
}
