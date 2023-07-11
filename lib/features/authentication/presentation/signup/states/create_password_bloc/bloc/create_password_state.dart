part of 'create_password_bloc.dart';

@freezed
class CreatePasswordState with _$CreatePasswordState {
  const factory CreatePasswordState.initial() = _Initial;

  const factory CreatePasswordState.creatingPassword() = _CreatingPassword;
  const factory CreatePasswordState.createPasswordSuccess(String message) =
      _CreatePasswordSuccess;
  const factory CreatePasswordState.createPasswordError(String message) =
      _CreatePasswordError;
}
