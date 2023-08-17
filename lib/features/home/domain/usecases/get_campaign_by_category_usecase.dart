import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:equatable/equatable.dart';

class GetCampaignByCategoryUseCase
    implements UseCase<CampaignResponse, CampaignByCategoryParams> {
  final CampaignRepository campaignRepository;

  GetCampaignByCategoryUseCase(this.campaignRepository);

  @override
  Future<Either<ApiError, CampaignResponse>> call(
      CampaignByCategoryParams params) async {
    return await campaignRepository.getCampaignsByCategory(id: params.id);
  }
}

class CampaignByCategoryParams extends Equatable {
  final String id;

  const CampaignByCategoryParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
