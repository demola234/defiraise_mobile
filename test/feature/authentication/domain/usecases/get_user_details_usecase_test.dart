import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/get_user_details_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_usecase_test.mocks.dart';

@GenerateMocks([AuthenticationRepository])
void main() {
  late GetUserDetailsUsecase usecase;
  late MockAuthenticationRepository mockAuthenticationRepository;

  late UserResponse tResponse;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    usecase = GetUserDetailsUsecase(mockAuthenticationRepository);
    tResponse = const UserResponse(
      username: "ademola1",
      email: "",
      passwordChangedAt: null,
      createdAt: null,
      address: "0x1C803Ba37C0494ecD088Fb878d687FAEb5a2EB5E",
      balance: "0.1",
    );
  });

  final tFailedResponse = LoginResponse(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockAuthenticationRepository.getUserDetails())
        .thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Right(tResponse));
    verify(mockAuthenticationRepository.getUserDetails());
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockAuthenticationRepository.getUserDetails())
        .thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Left(failure));
    verify(mockAuthenticationRepository.getUserDetails());
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });
}
