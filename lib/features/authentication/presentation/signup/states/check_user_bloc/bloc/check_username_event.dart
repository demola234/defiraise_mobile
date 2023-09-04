part of 'check_username_bloc.dart';

class CheckUsernameEvent extends Equatable {
  const CheckUsernameEvent();

  @override
  List<Object?> get props => [];

  @override
  bool get stringify => true;
}


class CheckUsernameEq extends CheckUsernameEvent {
  final String username;

  const CheckUsernameEq({
    required this.username,
  });

  @override
  List<Object?> get props => [username];
}
