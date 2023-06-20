import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_account_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_account_usecase_test.mocks.dart';

@GenerateMocks([AuthenticationRepository])
void main() {
  late CreateUserAccountUsecase usecase;
  late MockAuthenticationRepository mockAuthenticationRepository;
  late String username;
  late String email;
  late String password;
  late CreateAccountResponse tResponse;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    usecase = CreateUserAccountUsecase(mockAuthenticationRepository);
    username = "test";
    email = "test@test.com";
    password = "Pass234";
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

  final tFailedResponse = CreateAccountResponse(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockAuthenticationRepository.createAccount(
            email: email, username: username, password: password))
        .thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(Params(email: email, username: username, password: password));

    // assert
    expect(result, Right(tResponse));
    verify(mockAuthenticationRepository.createAccount(
        email: email, username: username, password: password));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockAuthenticationRepository.createAccount(
            email: email, username: username, password: password))
        .thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(Params(email: email, username: username, password: password));

    // assert
    expect(result, Left(failure));
    verify(mockAuthenticationRepository.createAccount(
        email: email, username: username, password: password));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });
}
