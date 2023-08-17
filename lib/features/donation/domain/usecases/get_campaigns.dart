import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/donation/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/donation/domain/repositories/campaign_repository.dart';

class GetCampaignsUseCase implements UseCase<CampaignResponse, NoParams> {
  final CampaignRepository campaignRepository;

  GetCampaignsUseCase(this.campaignRepository);

  @override
  Future<Either<ApiError, CampaignResponse>> call(NoParams params) async {
    return await campaignRepository.getCampaigns();
  }
}
