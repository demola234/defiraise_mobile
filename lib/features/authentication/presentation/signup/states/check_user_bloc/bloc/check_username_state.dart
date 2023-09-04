part of 'check_username_bloc.dart';

@freezed
class CheckUsernameState with _$CheckUsernameState {
  const factory CheckUsernameState.initial() = _Initial;
    const factory CheckUsernameState.checkingUsername() = _CheckingUser;
  const factory CheckUsernameState.checkedUserLoaded(bool message) =
      _CheckUsernameLoaded;
  const factory CheckUsernameState.checkUsernameError(String message) =
      _CheckUsernameError;
}
