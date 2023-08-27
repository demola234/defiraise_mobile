import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/check_user_entity/check_user_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/check_user_exist_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_account_usecase_test.mocks.dart';

@GenerateMocks([AuthenticationRepository])
void main() {
  late CheckUsernameExistUsecase usecase;
  late MockAuthenticationRepository mockAuthenticationRepository;
  late String username;
  late CheckUserEntity tResponse;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    usecase = CheckUsernameExistUsecase(mockAuthenticationRepository);
    username = "test";
    tResponse =
        const CheckUserEntity(data: true, message: "success", status: 200);
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
    when(mockAuthenticationRepository.checkUsernameExists(username: username))
        .thenAnswer((_) async => Right(tResponse));

    // act
    final result =
        await usecase.call(CheckUsernameExistParams(username: username));

    // assert
    expect(result, Right(tResponse));
    verify(mockAuthenticationRepository.checkUsernameExists(
      username: username,
    ));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockAuthenticationRepository.checkUsernameExists(
      username: username,
    )).thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(CheckUsernameExistParams(
      username: username,
    ));

    // assert
    expect(result, Left(failure));
    verify(mockAuthenticationRepository.checkUsernameExists(
      username: username,
    ));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });
}
