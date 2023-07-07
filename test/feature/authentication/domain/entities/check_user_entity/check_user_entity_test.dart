import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/check_user_entity/check_user_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture_reader.dart';

void main() {
  final tResponse = CheckUserEntity(
    data: true,
    message: "success",
    status: 200,
  );

  final tFailedResponse = CheckUserEntity(
    message: "failed",
    status: 400,
  );

  group("test response on successful check user", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("check_user.json"));
      // act
      final result = CheckUserEntity.fromJson(jsonMap);
      // assert
      expect(result, tResponse);
    });
  });

  group("test response on failed check user", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("base_response_failed.json"));
      // act
      final result = CheckUserEntity.fromJson(jsonMap);
      // assert
      expect(result, tFailedResponse);
    });
  });
}
