part of 'verify_otp_bloc.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState.initial() = _Initial;

  ///
  const factory VerifyOtpState.verifyingOtp() = _VerifyingOtp;
  const factory VerifyOtpState.otpVerificationSuccessful(String message) =
      _OtpVerificationSuccessful;
  const factory VerifyOtpState.otpVerificationError(String message) =
      _OtpVerificationError;
}
