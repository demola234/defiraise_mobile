import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/check_user_exist_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_account_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_user_password_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/resend_otp_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final CreateUserAccountUsecase createUserAccountUsecase;
  final VerifyOtpUseCase verifyOtpUseCase;
  final CreateUserPasswordUsecase createPasswordUseCase;
  final ResendOtpUsecase resendOtpUsecase;
  final CheckUsernameExistUsecase checkUsernameExistUsecase;
  SignUpBloc(
      {required this.createUserAccountUsecase,
      required this.verifyOtpUseCase,
      required this.resendOtpUsecase,
      required this.checkUsernameExistUsecase,
      required this.createPasswordUseCase})
      : super(_Initial()) {
    on<RegisterUser>(_onRegisterUser);
    on<VerifyOtp>(_onVerifyOtp);
    on<ResendOtp>(_resendOtp);
    on<CheckUsernameEvent>(_checkUsername);
  }

  Future<void> _onRegisterUser(
      RegisterUser event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    final failureOrSuccess = await createUserAccountUsecase
        .call(Params(email: event.email, username: event.username));
    failureOrSuccess.fold((failure) {
      emit(SignUpState.registrationError(failure.errorMessage));
    }, (success) {
      emit(SignUpState.registrationSuccessful(success.message));
    });
  }

  Future<void> _onVerifyOtp(VerifyOtp event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.verifyingOtp());
    final failureOrSuccess = await verifyOtpUseCase
        .call(VerifyParams(otpCode: event.otp, username: event.username));
    failureOrSuccess.fold((failure) {
      emit(SignUpState.otpVerificationError(failure.errorMessage));
    }, (success) {
      emit(SignUpState.otpVerificationSuccessful(success.message));
    });
  }

  Future<void> _checkUsername(
      CheckUsernameEvent event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.checkingUsername());
    final failureOrSuccess =
        await checkUsernameExistUsecase.call(CheckUsernameExistParams(
      username: event.username,
    ));
    failureOrSuccess.fold((failure) {
      emit(SignUpState.checkUsernameError(failure.errorMessage));
    }, (success) {
      emit(SignUpState.checkedUserLoaded(success.data!));
    });
  }

  Future<void> _resendOtp(ResendOtp event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    final failureOrSuccess = await resendOtpUsecase.call(ResendOtpParams(
      username: event.username,
    ));
    failureOrSuccess.fold((failure) {
      emit(SignUpState.otpResendError(failure.errorMessage));
    }, (success) {
      emit(SignUpState.otpResendSuccessful(success.message));
    });
  }
}
