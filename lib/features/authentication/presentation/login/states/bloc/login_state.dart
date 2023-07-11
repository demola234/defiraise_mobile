part of 'login_state_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = LoadingState;
  const factory LoginState.authenticationFailed(
    String error,
  ) = AuthFailedState;
  const factory LoginState.loginSuccessful(
    LoginResponse response,
  ) = AuthLoadedState;
}
