part of 'create_password_bloc.dart';

class CreatePasswordEvent extends Equatable {
  const CreatePasswordEvent();

  @override
  List<Object?> get props => [];

  @override
  bool get stringify => true;
}


class CreatePasswordEq extends CreatePasswordEvent {
  final String password;
  final String username;
  final bool biometrics;

  const CreatePasswordEq({
    required this.password,
    required this.username,
    required this.biometrics,
  });

  @override
  List<Object?> get props => [password, username];
}
