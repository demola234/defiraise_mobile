import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/donation/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/donation/domain/repositories/campaign_repository.dart';

class CampaignCategoryUseCase implements UseCase<CampaignCategories, NoParams> {
  final CampaignRepository campaignRepository;

  CampaignCategoryUseCase(this.campaignRepository);

  @override
  Future<Either<ApiError, CampaignCategories>> call(NoParams params) async {
    return await campaignRepository.getCategories();
  }
}
