import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';

abstract class CampaignRepository {
  Future<Either<ApiError, CampaignCategories>> getCategories();
  Future<Either<ApiError, CampaignResponse>> getCampaigns();
  Future<Either<ApiError, CampaignResponse>> getMyCampaigns();
  Future<Either<ApiError, CampaignResponse>> getDonations();
  Future<Either<ApiError, CampaignResponse>> getCampaignsByCategory({
    required String id,
  });
  Future<Either<ApiError, BaseEntity>> getCurrentEthPrice();
  Future<Either<ApiError, BaseEntity>> makeDonation({
    required String campaignId,
    required String amount,
  });
  Future<Either<ApiError, DonorsEntity>> getDonors({
    required String campaignId,
  });
  Future<Either<ApiError, BaseEntity>> createDonation(
      {required String title,
      required String description,
      required String amount,
      required String category,
      required String deadline,
      required File images});
}
