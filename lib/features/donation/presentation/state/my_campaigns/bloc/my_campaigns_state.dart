part of 'my_campaigns_bloc.dart';

@freezed
class MyCampaignsState with _$MyCampaignsState {
  const factory MyCampaignsState.initial() = _Initial;
  
  const factory MyCampaignsState.loading() = LoadingState;

  const factory MyCampaignsState.error(String error) = ErrorState;

  const factory MyCampaignsState.loaded(CampaignResponse campaigns) = LoadMyCampaigns;

}
