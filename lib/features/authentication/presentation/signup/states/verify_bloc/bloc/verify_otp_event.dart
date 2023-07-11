part of 'verify_otp_bloc.dart';

class VerifyOtpEvent extends Equatable {
  const VerifyOtpEvent();

  @override
  List<Object?> get props => [];

  @override
  bool get stringify => true;
}

class VerifyOtpEq extends VerifyOtpEvent {
  final String otp;
  final String username;

  const VerifyOtpEq({
    required this.otp,
    required this.username,
  });

  @override
  List<Object?> get props => [otp, username];
}
