import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture_reader.dart';


void main() {
  final tResponse = LoginResponse(
    data: Data(
      sessionId: "",
      accessToken: "",
      accessTokenExpiresAt: null,
      refreshToken: "",
      refreshTokenExpiresAt: null,
      user: User(
        username: "ademola1",
        email: "",
        passwordChangedAt: null,
        createdAt: null,
        address: "0x1C803Ba37C0494ecD088Fb878d687FAEb5a2EB5E",
        balance: "0.1",
      ),
    ),
    message: "success",
    status: 200,
  );

  final tFailedResponse = LoginResponse(
    message: "error message",
    status: 400,
  );

  group("test response on successful login", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("login_response.json"));
      // act
      final result = LoginResponse.fromJson(jsonMap);
      // assert
      expect(result, tResponse);
    });
  });

  group("test response on failed login account", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("login_response_failed.json"));
      // act
      final result = LoginResponse.fromJson(jsonMap);
      // assert
      expect(result, tFailedResponse);
    });
  });
}
