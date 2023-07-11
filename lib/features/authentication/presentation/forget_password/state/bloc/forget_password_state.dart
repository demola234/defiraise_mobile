part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  const factory ForgetPasswordState.registrationError(String message) =
      _ForgetPasswordError;
  const factory ForgetPasswordState.loading() = _Loading;
  const factory ForgetPasswordState.registrationSuccessful(String message) =
      _ForgetPasswordSuccess;

  ///
  const factory ForgetPasswordState.verifyingOtp() = _VerifyingOtp;
  const factory ForgetPasswordState.otpVerificationSuccessful(String message) =
      _OtpVerificationSuccessful;
  const factory ForgetPasswordState.otpVerificationError(String message) =
      _OtpVerificationError;

  ///
  const factory ForgetPasswordState.resendingOtp() = _ResendingOtp;
  const factory ForgetPasswordState.otpResendSuccessful(String message) =
      _OtpResendSuccessful;
  const factory ForgetPasswordState.otpResendError(String message) =
      _OtpResendError;

  ///
  const factory ForgetPasswordState.resetPassword() = _CreatingPassword;
  const factory ForgetPasswordState.resetPasswordSuccess(String message) =
      _CreatePasswordSuccess;
  const factory ForgetPasswordState.resetPasswordError(String message) =
      _CreatePasswordError;
      
}
