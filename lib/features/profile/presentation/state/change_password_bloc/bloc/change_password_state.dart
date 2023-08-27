part of 'change_password_bloc.dart';


@freezed

class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  
  const factory ChangePasswordState.loading() = LoadingState;

  const factory ChangePasswordState.error(String error) = ErrorState;

  const factory ChangePasswordState.loaded(String success) = LoadedState;
}