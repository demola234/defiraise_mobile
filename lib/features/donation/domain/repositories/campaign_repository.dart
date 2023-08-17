import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/donation/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/donation/domain/entities/campaigns/campaigns_entity.dart';

abstract class CampaignRepository {
  Future<Either<ApiError, CampaignCategories>> getCategories();
  Future<Either<ApiError, CampaignResponse>> getCampaigns();
}
