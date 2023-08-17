part of 'sign_up_bloc.dart';

class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object?> get props => [];

  @override
  bool get stringify => true;
}

class RegisterUser extends SignUpEvent {
  final String email;
  final String username;

  const RegisterUser({
    required this.email,
    required this.username,
  });

  @override
  List<Object?> get props => [email, username];
}

class VerifyOtp extends SignUpEvent {
  final String otp;
  final String username;

  const VerifyOtp({
    required this.otp,
    required this.username,
  });

  @override
  List<Object?> get props => [otp, username];
}

class ResendOtp extends SignUpEvent {
  final String username;

  const ResendOtp({
    required this.username,
  });

  @override
  List<Object?> get props => [username];
}

class CheckUsernameEvent extends SignUpEvent {
  final String username;

  const CheckUsernameEvent({
    required this.username,
  });

  @override
  List<Object?> get props => [username];
}

class CreatePassword extends SignUpEvent {
  final String password;
  final String username;
  final bool biometrics;

  const CreatePassword({
    required this.password,
    required this.username,
    required this.biometrics,
  });

  @override
  List<Object?> get props => [password, username];
}
