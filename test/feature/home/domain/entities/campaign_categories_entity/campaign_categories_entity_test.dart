import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture_reader.dart';

void main() {
  final tResponse = CampaignCategories(
    data: [
      Datum(
        id: "1",
        name: "test",
        description: "test",
        image: "test",
      )
    ],
    message: "success",
    status: 200,
  );

  final tFailedResponse = BaseEntity(
    message: "failed",
    status: 400,
  );

  group("test response on successful user verified", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("campaign_categories_response.json"));
      // act
      final result = CampaignCategories.fromJson(jsonMap);
      // assert
      expect(result, tResponse);
    });
  });

  group("test response on failed verify user account", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("base_response_failed.json"));
      // act
      final result = BaseEntity.fromJson(jsonMap);
      // assert
      expect(result, tFailedResponse);
    });
  });
}
