import 'dart:convert';
import 'dart:io';

import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/core/network/endpoint_manager.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/data/data_source/campaign_remote_date_source.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixture/fixture_reader.dart';

class MockNetworkProvider extends Mock implements NetworkProvider {}

void main() {
  late MockNetworkProvider mockNetworkProvider;
  late CampaignRemoteDataSourceImpl campaignRemoteDataSourceImpl;

  setUp(() async {
    mockNetworkProvider = MockNetworkProvider();
    campaignRemoteDataSourceImpl =
        CampaignRemoteDataSourceImpl(mockNetworkProvider);
  });

  // getCampaigns
  void setUpMockHttpGetCampaigns() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.getCampaign,
          method: RequestMethod.get,
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.getCampaign),
          data: json.decode(fixture('campaign_reesponse.json')),
          statusCode: 200);
    });
  }

  // getMyCampaigns
  void setUpMockHttpGetMyCampaigns() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.getMyCampaign,
          method: RequestMethod.get,
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.getMyCampaign),
          data: json.decode(fixture('campaign_reesponse.json')),
          statusCode: 200);
    });
  }

  // getCategories
  void setUpMockHttpGetCategories() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.getCategories,
          method: RequestMethod.get,
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.getCategories),
          data: json.decode(fixture('campaign_categories_response.json')),
          statusCode: 200);
    });
  }

  // getDonations
  void setUpMockHttpGetDonations() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.getDonation,
          method: RequestMethod.get,
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.getDonation),
          data: json.decode(fixture('campaign_reesponse.json')),
          statusCode: 200);
    });
  }

  // getCampaignsByCategory
  void setUpMockHttpGetCampaignsByCategory() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.getCampaignsByCategory("1"),
          method: RequestMethod.get,
        )).thenAnswer((_) async {
      return Response(
          requestOptions:
              RequestOptions(path: EndpointManager.getCampaignsByCategory("1")),
          data: json.decode(fixture('campaign_reesponse.json')),
          statusCode: 200);
    });
  }

  // getCurrentEthPrice
  void setUpMockHttpGetCurrentEthPrice() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.getCurrentEthPrice,
          method: RequestMethod.get,
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(
              path: EndpointManager.getCurrentEthPrice,),
          data: json.decode(fixture('base_response.json')),
          statusCode: 200);
    });
  }

  // getDonors
  void setUpMockHttpGetDonors() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.getDonors("1"),
          method: RequestMethod.get,
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.getDonors("1")),
          data: json.decode(fixture('donors_response.json')),
          statusCode: 200);
    });
  }
  // makeDonation
  void setUpMockHttpMakeDonation() {
    when(() => mockNetworkProvider.call(
          path: EndpointManager.makeDonation,
          method: RequestMethod.post,
          body: {
            "campaign_id": "1",
            "amount": "1",
          },
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.makeDonation),
          data: json.decode(fixture('base_response.json')),
          statusCode: 200);
    });
  }

  // createDonation
  void setUpMockHttpCreateDonation() async {
    var data = <String, dynamic>{};
    var multiPart = await MultipartFile.fromFile(
      "assets/images/appLogo.png",
      filename: "appLogo.png",
    );

    data["image"] = multiPart;
    data['title'] = "title";
    data['description'] = "description";
    data['goal'] = "amount";
    data['category'] = "category";
    data['deadline'] = "deadline";

    
    when(() => mockNetworkProvider.call(
          path: EndpointManager.createDonation,
          method: RequestMethod.post,
          body:  FormData.fromMap(data),
        )).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.createDonation),
          data: json.decode(fixture('base_response.json')),
          statusCode: 200);
    });
  }

  group("Get Campaigns", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpGetCampaigns();
      final result = await campaignRemoteDataSourceImpl.getCampaigns();
      expect(result, isA<CampaignResponse>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.getCampaign,
            method: RequestMethod.get,
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.getCampaign),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.getCampaigns;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });

  // getMyCampaigns
  group("Get My Campaigns", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpGetMyCampaigns();
      final result = await campaignRemoteDataSourceImpl.getMyCampaigns();
      expect(result, isA<CampaignResponse>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.getMyCampaign,
            method: RequestMethod.get,
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.getMyCampaign),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.getMyCampaigns;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });

  // getCategories
  group("Get Categories", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpGetCategories();
      final result = await campaignRemoteDataSourceImpl.getCategories();
      expect(result, isA<CampaignCategories>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.getCategories,
            method: RequestMethod.get,
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.getCategories),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.getCategories;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });

  // getDonations
  group("Get Donations", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpGetDonations();
      final result = await campaignRemoteDataSourceImpl.getDonations();
      expect(result, isA<CampaignResponse>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.getDonation,
            method: RequestMethod.get,
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.getDonation),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.getDonations;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });

  // getCampaignsByCategory
  group("Get Campaigns By Category", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpGetCampaignsByCategory();
      final result =
          await campaignRemoteDataSourceImpl.getCampaignsByCategory(id: "1");
      expect(result, isA<CampaignResponse>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.getCampaignsByCategory("1"),
            method: RequestMethod.get,
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(
                path: EndpointManager.getCampaignsByCategory("1")),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.getCampaignsByCategory;
      expect(() => call(id: "1"), throwsA(isA<ServerException>()));
    });
  });

  // getCurrentEthPrice
  group("Get Current Eth Price", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpGetCurrentEthPrice();
      final result =
          await campaignRemoteDataSourceImpl.getCurrentEthPrice();
      expect(result, isA<BaseEntity>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.getCurrentEthPrice,
            method: RequestMethod.get,
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(
                path: EndpointManager.getCurrentEthPrice),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.getCurrentEthPrice;
      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });

  // getDonors
  group("Get Donors", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpGetDonors();
      final result = await campaignRemoteDataSourceImpl.getDonors(campaignId: "1");
      expect(result, isA<DonorsEntity>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.getDonors("1"),
            method: RequestMethod.get,
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.getDonors("1")),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.getDonors;
      expect(() => call(campaignId: "1"), throwsA(isA<ServerException>()));
    });
  });

  // makeDonation
  group("Make Donation", () {
    test("should return Create User Response when the call is successful",
        () async {
      setUpMockHttpMakeDonation();
      final result = await campaignRemoteDataSourceImpl.makeDonation(
        campaignId: "1",
        amount: "1",
      );
      expect(result, isA<BaseEntity>());
    });

    test("should throw ServerException when the call is unsuccessful",
        () async {
      when(() => mockNetworkProvider.call(
            path: EndpointManager.makeDonation,
            method: RequestMethod.post,
            body: {
              "campaign_id": "1",
              "amount": "1",
            },
          )).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(path: EndpointManager.makeDonation),
            data: json.decode(fixture('campaign_failed_response.json')),
            statusCode: 400);
      });
      final call = campaignRemoteDataSourceImpl.makeDonation;
      expect(() => call(campaignId: "1", amount: "1"),
          throwsA(isA<ServerException>()));
    });
  });

  // createDonation
}
