part of 'login_state_bloc.dart';

abstract class LoginStateEvent extends Equatable {
  const LoginStateEvent();
  @override
  List<Object?> get props => [];
}

class FetchLastUserCredentials extends LoginStateEvent {}

class LoginInUserEvent extends LoginStateEvent {
  final String password;
  final String user;

  const LoginInUserEvent({required this.password, required this.user});
}

class ClearLastUserDataCacheEvent extends LoginStateEvent {}

class LoginWithFingerPrintEvent extends LoginStateEvent {

  const LoginWithFingerPrintEvent();
}

class LogOutEvent extends LoginStateEvent {
  const LogOutEvent();
}
