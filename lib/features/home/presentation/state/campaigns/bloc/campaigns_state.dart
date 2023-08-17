part of 'campaigns_bloc.dart';

@freezed
class CampaignsState with _$CampaignsState {
  const factory CampaignsState.initial() = _Initial;
  
  const factory CampaignsState.loading() = LoadingState;

  const factory CampaignsState.error(String error) = ErrorState;

  const factory CampaignsState.loaded(CampaignResponse campaigns) = LoadCampaigns;

}





