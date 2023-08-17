import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:equatable/equatable.dart';

class GetDonorsUsecase implements UseCase<DonorsEntity, DonorsParams> {
  final CampaignRepository campaignRepository;

  GetDonorsUsecase(this.campaignRepository);

  @override
  Future<Either<ApiError, DonorsEntity>> call(DonorsParams params) async {
    return await campaignRepository.getDonors(campaignId: params.id);
  }
}

class DonorsParams extends Equatable {
  final String id;

  const DonorsParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
