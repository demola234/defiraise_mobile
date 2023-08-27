import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/verify_bloc/bloc/verify_otp_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'verify_otp_bloc_test.mocks.dart';

@GenerateMocks([VerifyOtpUseCase])
void main() {
  late MockVerifyOtpUseCase mockVerifyOtpUseCase;

  late VerifyOtpBloc bloc;
  late BaseEntity tBaseResponse;
  late String tUsername;
  late String tOtp;
  late String tMessage;

  setUp(() {
    mockVerifyOtpUseCase = MockVerifyOtpUseCase();
    bloc = VerifyOtpBloc(
      verifyOtpUseCase: mockVerifyOtpUseCase,
    );
  });

  tBaseResponse = const BaseEntity(
    message: "success",
    data: "Passed",
    status: 200,
  );

  tUsername = "test";
  tOtp = "123456";
  tMessage = "success";

  void setUpMockConverterToSuccess() => when(mockVerifyOtpUseCase.call(any))
      .thenAnswer((_) async => Right(tBaseResponse));

  test('initialState should be Empty', () async {
    //assert
    expect(bloc.state, VerifyOtpState.initial());
  });

  group("should create password", () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToSuccess();

      // act
      bloc.add(VerifyOtpEq(
        otp: tOtp,
        username: tUsername,
      ));

      // assert
      await untilCalled(mockVerifyOtpUseCase.call(any));
      verify(mockVerifyOtpUseCase
          .call(VerifyParams(username: tUsername, otpCode: tOtp)));
    });

    test(
        'should emit [Loading, Loaded] when data is gotten successfully from the server',
        () async {
      // arrange
      setUpMockConverterToSuccess();

      // assert later
      final expected = [
        VerifyOtpState.verifyingOtp(),
        VerifyOtpState.otpVerificationSuccessful(tMessage),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(VerifyOtpEq(
        otp: tOtp,
        username: tUsername,
      ));
    });

    test('should emit [Loading, Error] when getting data fails from the server',
        () async* {
      // arrange
      when(mockVerifyOtpUseCase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        VerifyOtpState.verifyingOtp(),
        VerifyOtpState.otpVerificationError(tBaseResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(VerifyOtpEq(
        otp: tOtp,
        username: tUsername,
      ));
    });
  });
}
