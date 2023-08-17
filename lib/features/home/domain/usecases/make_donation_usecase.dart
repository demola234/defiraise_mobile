import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:equatable/equatable.dart';

class MakeDonationUsecase
    implements UseCase<BaseEntity, MakeDonationParams> {
  final CampaignRepository campaignRepository;

  MakeDonationUsecase(this.campaignRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(
      MakeDonationParams params) async {
    return await campaignRepository.makeDonation(
        campaignId: params.campaignId, amount: params.amount);
  }
}

class MakeDonationParams extends Equatable {
  final String campaignId;
  final String amount;

  const MakeDonationParams({
    required this.campaignId,
    required this.amount,
  });

  @override
  List<Object> get props => [campaignId, amount];
}
