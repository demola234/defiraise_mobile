part of 'change_username_bloc.dart';

@freezed

class ChangeUsernameState with _$ChangeUsernameState {
  const factory ChangeUsernameState.initial() = _Initial;
  
  const factory ChangeUsernameState.loading() = LoadingState;

  const factory ChangeUsernameState.error(String error) = ErrorState;

  const factory ChangeUsernameState.loaded(String success) = LoadedState;
}