part of 'change_username_bloc.dart';

abstract class ChangeUsernameEvent extends Equatable {
  const ChangeUsernameEvent();

  @override
  List<Object> get props => [];
}

class ChangeUsernameEq extends ChangeUsernameEvent {
  final String? username;

  const ChangeUsernameEq({this.username});
}
