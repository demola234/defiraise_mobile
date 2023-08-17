import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/reset_password_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_password_reset.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_bloc.freezed.dart';
part 'forget_password_event.dart';
part 'forget_password_state.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  final ResetPasswordUsecase resetPasswordUsecase;
  final VerifyPasswordResetUsecase verifyPasswordResetUsecase;
  ForgetPasswordBloc({required this.resetPasswordUsecase, required this.verifyPasswordResetUsecase}) : super(_Initial()) {
    on<ResetPasswordEvent>(_resetPassword);
    on<ResetVerifyOtpEvent>(_onVerifyOtp);
  }

  Future<void> _resetPassword(
      ResetPasswordEvent event, Emitter<ForgetPasswordState> emit) async {
    emit(const ForgetPasswordState.loading());
    final failureOrSuccess =
        await resetPasswordUsecase.call(Params(username: event.email));
    failureOrSuccess.fold((failure) {
      emit(ForgetPasswordState.resetPasswordError(failure.errorMessage));
    }, (success) {
      emit(ForgetPasswordState.resetPasswordSuccess(success.message));
    });
  }

  Future<void> _onVerifyOtp(
      ResetVerifyOtpEvent event, Emitter<ForgetPasswordState> emit) async {
    emit(const ForgetPasswordState.loading());
    final failureOrSuccess = await verifyPasswordResetUsecase
        .call(VerifyPasswordParams(otpCode: event.otp, username: event.username, password: event.password));
    failureOrSuccess.fold((failure) {
      emit(ForgetPasswordState.registrationError(failure.errorMessage));
    }, (success) {
      emit(ForgetPasswordState.registrationSuccessful(success.message));
    });
  }
}
