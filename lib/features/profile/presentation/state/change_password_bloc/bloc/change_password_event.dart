part of 'change_password_bloc.dart';


abstract class ChangePasswordEvent extends Equatable {
  const ChangePasswordEvent();

  @override
  List<Object> get props => [];
}

class ChangePasswordEq extends ChangePasswordEvent {
  final String? oldPassword;
  final String? newPassword;

  const ChangePasswordEq({this.oldPassword, this.newPassword});
}
