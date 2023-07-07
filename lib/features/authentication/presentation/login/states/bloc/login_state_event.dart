part of 'login_state_bloc.dart';

abstract class LoginStateEvent extends Equatable {
  const LoginStateEvent();
  @override
  List<Object?> get props => [];
}

class FetchLastUserCredentials extends LoginStateEvent {}

class LoginInUserEvent extends LoginStateEvent {
  final String password;
  final String phoneNumber;

  const LoginInUserEvent({required this.password, required this.phoneNumber});
}

class ClearLastUserDataCacheEvent extends LoginStateEvent {}

class LoginWithFingerPrintEvent extends LoginStateEvent {
  final LastUserCachedDetails userCachedDetails;

  const LoginWithFingerPrintEvent({required this.userCachedDetails});
}

class LogOutEvent extends LoginStateEvent {
  const LogOutEvent();
}
