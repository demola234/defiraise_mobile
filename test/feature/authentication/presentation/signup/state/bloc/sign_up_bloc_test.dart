import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/check_user_exist_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_account_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_user_password_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/resend_otp_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/bloc/sign_up_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sign_up_bloc_test.mocks.dart';

@GenerateMocks([CreateUserAccountUsecase])
@GenerateMocks([VerifyOtpUseCase])
@GenerateMocks([CreateUserPasswordUsecase])
@GenerateMocks([CheckUsernameExistUsecase])
@GenerateMocks([ResendOtpUsecase])

void main() {
  late MockCreateUserAccountUsecase mockCreateUserAccountUsecase;
  late MockVerifyOtpUseCase mockVerifyOtpUseCase;
  late MockCreateUserPasswordUsecase mockCreatePasswordUseCase;
  late MockResendOtpUsecase mockResendOtpUsecase;
  late MockCheckUsernameExistUsecase mockCheckUsernameExistUsecase;

  late String tEmail;
  late String tUsername;
  late CreateAccountResponse tResponse;
  late SignUpBloc bloc;

  setUp(() {
    mockCreateUserAccountUsecase = MockCreateUserAccountUsecase();
    mockVerifyOtpUseCase = MockVerifyOtpUseCase();
    mockCheckUsernameExistUsecase = MockCheckUsernameExistUsecase();
    mockCreatePasswordUseCase = MockCreateUserPasswordUsecase();
    mockResendOtpUsecase = MockResendOtpUsecase();
    tUsername = "test";
    tEmail = "test@test.com";
    bloc = SignUpBloc(
        createUserAccountUsecase: mockCreateUserAccountUsecase,
        createPasswordUseCase: mockCreatePasswordUseCase,
        checkUsernameExistUsecase: mockCheckUsernameExistUsecase,
        resendOtpUsecase: mockResendOtpUsecase,
        verifyOtpUseCase: mockVerifyOtpUseCase);
    tResponse = const CreateAccountResponse(
        data: Data(
            username: "test",
            email: "test@test.com",
            passwordChangedAt: null,
            createdAt: null,
            address: "0xtest",
            balance: "0"),
        message: "success",
        status: 200);
  });

  void setUpMockConverterToSuccess() =>
      when(mockCreateUserAccountUsecase.call(any))
          .thenAnswer((_) async => Right(tResponse));
  test('initialState should be Empty', () async {
    //assert
    expect(bloc.state, SignUpState.initial());
  });

  group('Create User Account', () {
    test('should get the user info after you create account', () async {
      // arrange
      setUpMockConverterToSuccess();

      // act
      bloc.add(RegisterUser(email: tEmail, username: tUsername));

      // assert
      await untilCalled(mockCreateUserAccountUsecase.call(any));
      verify(mockCreateUserAccountUsecase
          .call(Params(email: tEmail, username: tUsername)));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      // arrange
      setUpMockConverterToSuccess();

      // assert later
      final expected = [
        SignUpState.loading(),
        SignUpState.createPasswordSuccess(tResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(RegisterUser(email: tEmail, username: tUsername));
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      // arrange
      when(mockCreateUserAccountUsecase.call(any)).thenAnswer(
          (_) async => Left(ApiError(errorMessage: "error", errorCode: "400")));

      // assert later
      final expected = [
        SignUpState.loading(),
        SignUpState.createPasswordError(tResponse.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));

      // act
      bloc.add(RegisterUser(email: tEmail, username: tUsername));
    });
  });
}
