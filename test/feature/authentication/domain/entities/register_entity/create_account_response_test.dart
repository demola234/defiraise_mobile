import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture_reader.dart';

void main() {
  final tResponse = CreateAccountResponse(
      data: Data(
          username: "test",
          email: "test@test.com",
          passwordChangedAt: null,
          createdAt: null,
          address: "0xtest",
          balance: "0"),
      message: "success",
      status: 200);

  final tFailedResponse = CreateAccountResponse(
    message: "error message",
    status: 400,
  );

  group("test response on successful create account", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("create_account_response.json"));
      // act
      final result = CreateAccountResponse.fromJson(jsonMap);
      // assert
      expect(result, tResponse);
    });
  });

  group("test response on failed create account", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("create_account_response_failed.json"));
      // act
      final result = CreateAccountResponse.fromJson(jsonMap);
      // assert
      expect(result, tFailedResponse);
    });
  });
}
