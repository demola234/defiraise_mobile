import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/reset_password_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_password_reset.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/forget_password/state/bloc/forget_password_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/bloc/login_state_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/bloc/sign_up_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'forget_password_bloc_test.mocks.dart';

@GenerateMocks([ResetPasswordUsecase])
@GenerateMocks([VerifyPasswordResetUsecase])
void main() {
  late MockResetPasswordUsecase mockResetPasswordUsecase;
  late MockVerifyPasswordResetUsecase mockVerifyPasswordResetUsecase;
  late String tEmail;
  late String tOtp;
  late String tPassword;
  late BaseEntity tResponse;
  late ForgetPasswordBloc bloc;

  setUp(() {
    mockResetPasswordUsecase = MockResetPasswordUsecase();
    mockVerifyPasswordResetUsecase = MockVerifyPasswordResetUsecase();
    tEmail = "test@test.com";
    tOtp = "123456";
    tPassword = "test";
    bloc = ForgetPasswordBloc(
        resetPasswordUsecase: mockResetPasswordUsecase,
        verifyPasswordResetUsecase: mockVerifyPasswordResetUsecase);
    tResponse = BaseEntity(
      data: "Verified",
      message: "success",
      status: 200,
    );
  });

  void setUpMockConverterToSuccess() => when(mockResetPasswordUsecase.call(any))
      .thenAnswer((_) async => Right(tResponse));

  void setUpMockConverterToVerifyPasswordSuccess() => when(mockVerifyPasswordResetUsecase.call(any))
      .thenAnswer((_) async => Right(tResponse));

  test('initialState should be Empty', () async {
    //assert
    expect(bloc.state, ForgetPasswordState.initial());
  });

  group('Reset Password User Account', () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToSuccess();

      // act
      bloc.add(ResetPasswordEvent(email: tEmail));

      // assert
      await untilCalled(mockResetPasswordUsecase.call(any));
      verify(mockResetPasswordUsecase.call(Params(username: tEmail)));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      // arrange
      setUpMockConverterToSuccess();

      // assert later
      final expected = [
        ForgetPasswordState.loading(),
        ForgetPasswordState.resetPassword(),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(ResetPasswordEvent(email: tEmail));
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      // arrange
      when(mockResetPasswordUsecase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        ForgetPasswordState.loading(),
        ForgetPasswordState.resetPasswordError(tResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(ResetPasswordEvent(email: tEmail));
    });
  });

  group("Verify User Otp Code", () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToVerifyPasswordSuccess();

      // act
      bloc.add(ResetVerifyOtpEvent(username: tEmail, otp: tOtp, password: tPassword));

      // assert
      await untilCalled(mockVerifyPasswordResetUsecase.call(any));
      verify(mockVerifyPasswordResetUsecase.call(VerifyPasswordParams(username: tEmail, otpCode: tOtp, password: tPassword)));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      // arrange
      setUpMockConverterToVerifyPasswordSuccess();

      // assert later
      final expected = [
        ForgetPasswordState.loading(),
        ForgetPasswordState.registrationSuccessful(tResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
       bloc.add(ResetVerifyOtpEvent(username: tEmail, otp: tOtp, password: tPassword));
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      // arrange
      when(mockVerifyPasswordResetUsecase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        ForgetPasswordState.loading(),
        ForgetPasswordState.registrationError(tResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
       bloc.add(ResetVerifyOtpEvent(username: tEmail, otp: tOtp, password: tPassword));
    });
  });
}
