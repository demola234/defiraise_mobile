part of 'forget_password_bloc.dart';

abstract class ForgetPasswordEvent extends Equatable {
  const ForgetPasswordEvent();
  @override
  List<Object?> get props => [];
}

class ResetPasswordEvent extends ForgetPasswordEvent {
  final String email;

  const ResetPasswordEvent({required this.email});
}

class ResetVerifyOtpEvent extends ForgetPasswordEvent {
  final String otp;
  final String username;
  final String password;

  const ResetVerifyOtpEvent({
    required this.otp,
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [otp, username, password];
}
