import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture_reader.dart';

void main() {
  final tResponse = DonorsEntity(
    data: [
      Donors(
        amount: 0,
        donor: "test",
        image: "test",
        username: "test",
      ),
    ],
    message: "success",
    status: 200,
  );

  final tFailedResponse = DonorsEntity(
    message: "failed",
    status: 400,
  );

  group("test response on successful user verified", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("donors_response.json"));
      // act
      final result = DonorsEntity.fromJson(jsonMap);
      // assert
      expect(result, tResponse);
    });
  });

  group("test response on failed verify user account", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("campaign_failed_response.json"));
      // act
      final result = DonorsEntity.fromJson(jsonMap);
      // assert
      expect(result, tFailedResponse);
    });
  });
}
