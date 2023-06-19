import 'dart:convert';

import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/core/network/endpoint_manager.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/features/authentication/data/data_source/authentication_remote_data_source.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/fixture_reader.dart';

class MockNetworkProvider extends Mock implements NetworkProvider {}

void main() {
  late MockNetworkProvider mockNetworkProvider;
  late AuthenticationRemoteDataSource authenticationRemoteDataSource;
  late String tUsername = "test";
  late String tEmail = "test@test.com";

  setUp(() {
    mockNetworkProvider = MockNetworkProvider();
    authenticationRemoteDataSource =
        IAuthenticationRemoteDataSource(mockNetworkProvider);
    tUsername = "test";
    tEmail = "test@test.com";
  });

  void setUpMockHttpManager() {
    when(() => mockNetworkProvider.call(
            path: EndpointManager.createAccount,
            method: RequestMethod.post,
            body: {
              "username": tUsername,
              "email": tEmail,
            })).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.createAccount),
          data: json.decode(fixture('create_account_response.json')),
          statusCode: 200);
    });
  }

  group("create user account", () {
    test("should return Create User Response when the call is successful", () async {
      setUpMockHttpManager();
      final result =
          await authenticationRemoteDataSource.createAccount(tUsername, tEmail);
      expect(result, isA<CreateAccountResponse>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.createAccount,
              method: RequestMethod.post,
              body: {
                "username": tUsername,
                "email": tEmail,
              })).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.createAccount),
            data: json.decode(fixture('create_account_response_failed.json')),
            statusCode: 400);
      });
      final call = authenticationRemoteDataSource.createAccount;
      expect(() => call(tUsername, tEmail), throwsA(isA<ServerException>()));
    });
  });
}
