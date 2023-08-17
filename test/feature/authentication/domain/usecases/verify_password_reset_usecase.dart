import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/verify_password_reset.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'create_account_usecase_test.mocks.dart';

void main() {
  late VerifyPasswordResetUsecase usecase;
  late MockAuthenticationRepository mockAuthenticationRepository;
  late String username;
  late String otpCode;
  late String password;
  late BaseEntity tResponse;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    usecase = VerifyPasswordResetUsecase(mockAuthenticationRepository);
    username = "test";
    otpCode = "123456";
    password = "password";
    tResponse = const BaseEntity(
      data: "Resent",
      message: "success",
      status: 200,
    );
  });

  final tFailedResponse = CreateAccountResponse(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockAuthenticationRepository.verifyPasswordResetCode(
      password: password,
      username: username,
      otpCode: otpCode,
    )).thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(VerifyPasswordParams(
      username: username,
      otpCode: otpCode,
      password: password,
    ));

    // assert
    expect(result, Right(tResponse));
    verify(mockAuthenticationRepository.verifyPasswordResetCode(
      username: username,
      otpCode: otpCode,
      password: password,
    ));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockAuthenticationRepository.verifyPasswordResetCode(
      username: username,
      otpCode: otpCode,
      password: password,
    )).thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(VerifyPasswordParams(
      username: username,
      otpCode: otpCode,
      password: password,
    ));

    // assert
    expect(result, Left(failure));
    verify(mockAuthenticationRepository.verifyPasswordResetCode(
      username: username,
      otpCode: otpCode,
      password: password,
    ));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });
}
