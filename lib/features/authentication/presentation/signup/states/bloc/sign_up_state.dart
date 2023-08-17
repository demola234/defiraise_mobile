part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.registrationError(String message) =
      _RegistrationError;
  const factory SignUpState.loading() = _Loading;
    const factory SignUpState.registrationSuccessful(String message) =
      _RegistrationSuccessful;

  ///
  const factory SignUpState.verifyingOtp() = _VerifyingOtp;
  const factory SignUpState.otpVerificationSuccessful(String message) =
      _OtpVerificationSuccessful;
  const factory SignUpState.otpVerificationError(String message) =
      _OtpVerificationError;

  ///
  const factory SignUpState.resendingOtp() = _ResendingOtp;
  const factory SignUpState.otpResendSuccessful(String message) =
      _OtpResendSuccessful;
  const factory SignUpState.otpResendError(String message) = _OtpResendError;

  ///
  const factory SignUpState.creatingPassword() = _CreatingPassword;
  const factory SignUpState.createPasswordSuccess(String message) =
      _CreatePasswordSuccess;
  const factory SignUpState.createPasswordError(String message) =
      _CreatePasswordError;

        ///
  const factory SignUpState.checkingUsername() = _CheckingUser;
  const factory SignUpState.checkedUserLoaded(bool message) =
      _CheckUsernameLoaded;
  const factory SignUpState.checkUsernameError(String message) =
      _CheckUsernameError;
}
