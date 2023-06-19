import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_remote_data_source.dart';
import 'package:defiraiser_mobile/features/authentication/data/repositories/authentication_repository.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// @GenerateMocks([AuthenticationRemoteDataSource], customMocks: [MockSpec<CreateAccountResponse>(returnNullOnMissingStub: true)])

class MockAuthenticationRemoteDataSource extends Mock
    implements AuthenticationRemoteDataSource {}

void main() {
  late MockAuthenticationRemoteDataSource mockRemoteDataSource;
  late IAuthenticationRepository authenticationRepositoryImpl;
  late String tUsername = "test";
  late String tEmail = "test@test.com";
  late CreateAccountResponse tResponse;

  setUpAll(() {
    mockRemoteDataSource = MockAuthenticationRemoteDataSource();
    authenticationRepositoryImpl = IAuthenticationRepository(
      remoteDataSource: mockRemoteDataSource,
    );
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

  group("create a new account for users", () {
    test(
        "should return remote data when the call to remote data source is successful",
        () async {
      // arrange
      when(() => mockRemoteDataSource.createAccount(any(), any()))
          .thenAnswer((_) async => tResponse);
      // act
      final result = await authenticationRepositoryImpl.createAccount(
          username: tUsername, email: tEmail);
      // assert
      verify(() => mockRemoteDataSource.createAccount(any(), any()));
      expect(result, equals(Right(tResponse)));
    });
  });
}
