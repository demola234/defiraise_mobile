import 'dart:io';

import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/global/error/exceptions.dart';
import 'package:defiraiser_mobile/core/network/endpoint_manager.dart';
import 'package:defiraiser_mobile/core/network/network_provider.dart';
import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:defiraiser_mobile/core/secure/secure_key.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

abstract class CampaignRemoteDataSource {
  Future<CampaignResponse> getCampaigns();
  Future<CampaignResponse> getMyCampaigns();
  Future<CampaignCategories> getCategories();
  Future<CampaignResponse> getDonations();
  Future<CampaignResponse> getCampaignsByCategory({required String id});
  Future<BaseEntity> getCurrentEthPrice();
  Future<BaseEntity> createDonation(
      {required String title,
      required String description,
      required String amount,
      required String category,
      required String deadline,
      required File images});

  Future<DonorsEntity> getDonors({
    required String campaignId,
  });
  Future<BaseEntity> makeDonation({
    required String campaignId,
    required String amount,
  });
}

class CampaignRemoteDataSourceImpl implements CampaignRemoteDataSource {
  final NetworkProvider client;
  CampaignRemoteDataSourceImpl(this.client);

  @override
  Future<CampaignCategories> getCategories() async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getCategories,
      method: RequestMethod.get,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return CampaignCategories.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<CampaignResponse> getCampaigns() async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getCampaign,
      method: RequestMethod.get,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return CampaignResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<CampaignResponse> getMyCampaigns() async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getMyCampaign,
      method: RequestMethod.get,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return CampaignResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<CampaignResponse> getDonations() async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getDonation,
      method: RequestMethod.get,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return CampaignResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<CampaignResponse> getCampaignsByCategory({required String id}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getCampaignsByCategory(id),
      method: RequestMethod.get,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return CampaignResponse.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> getCurrentEthPrice() async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getCurrentEthPrice,
      method: RequestMethod.get,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> makeDonation(
      {required String campaignId, required String amount}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.makeDonation,
      method: RequestMethod.post,
      body: {
        'campaign_id': campaignId,
        'amount': amount,
      },
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<DonorsEntity> getDonors({required String campaignId}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    final response = await client.call(
      path: EndpointManager.getDonors(campaignId),
      method: RequestMethod.get,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return DonorsEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }

  @override
  Future<BaseEntity> createDonation(
      {required String title,
      required String description,
      required String amount,
      required String category,
      required String deadline,
      required File images}) async {
    final token =
        await sl<SecureStorage>().getAccessToken(SecureStorageKey().token);

    List<MultipartFile> multiPart = [];
    var data = <String, dynamic>{};

    String fileName =
        '${DateTime.now().millisecondsSinceEpoch}.${images.path.split('.').last.toLowerCase()}';

    multiPart.add(await MultipartFile.fromFile(images.path,
        contentType: MediaType('image', images.path.split('.').last),
        filename: fileName));
    data["image"] = multiPart;

    data['title'] = title;
    data['description'] = description;
    data['goal'] = amount;
    data['category'] = category;
    data['deadline'] = deadline;

    final response = await client.call(
      path: EndpointManager.createDonation,
      method: RequestMethod.post,
      body: FormData.fromMap(data),
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    final res = response!.data;
    if (response.statusCode == 200) {
      return BaseEntity.fromJson(res);
    } else {
      throw ServerException(message: 'Server Error');
    }
  }
}
