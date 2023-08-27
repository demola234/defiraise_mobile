import 'dart:convert';

import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixture/fixture_reader.dart';

void main() {
  final tResponse = CampaignResponse(
    data: [
      Datum(
        campaignId: "test",
        title: "test",
        description: "test",
        deadline: "test",
        goal: 0,
        image: "test",
        id: 0,
        owner: "test",
        totalAmountDonated: 0,
        totalNumber: 0,
        user: [
          User(
            address: "test",
            username: "test",
            avatar: "test",
            email: "test",
          ),
        ],
        donations: [
          Donation(
            amount: 0,
            donor: "test",
            image: "test",
            username: "test",
          ),
        ],
      )
    ],
    message: "success",
    status: 200,
  );

  final tFailedResponse = CampaignResponse(
    message: "failed",
    status: 400,
  );

  group("test response on successful user verified", () {
    test("should return a valid model", () {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture("campaign_reesponse.json"));
      // act
      final result = CampaignResponse.fromJson(jsonMap);
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
      final result = CampaignResponse.fromJson(jsonMap);
      // assert
      expect(result, tFailedResponse);
    });
  });
}
