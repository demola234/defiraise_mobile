import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_bloc.freezed.dart';
part 'verify_otp_event.dart';
part 'verify_otp_state.dart';

class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final VerifyOtpUseCase verifyOtpUseCase;
  VerifyOtpBloc({
    required this.verifyOtpUseCase,
  }) : super(_Initial()) {
    on<VerifyOtpEq>(_onVerifyOtp);
  }

    Future<void> _onVerifyOtp(VerifyOtpEq event, Emitter<VerifyOtpState> emit) async {
    emit(const VerifyOtpState.verifyingOtp());
    final failureOrSuccess = await verifyOtpUseCase
        .call(VerifyParams(otpCode: event.otp, username: event.username));
    failureOrSuccess.fold((failure) {
      emit(VerifyOtpState.otpVerificationError(failure.errorMessage));
    }, (success) {
      emit(VerifyOtpState.otpVerificationSuccessful(success.message));
    });
  }
}
