part of 'campaign_by_campaign_bloc.dart';


@freezed
class CampaignByCampaignState with _$CampaignByCampaignState {
  const factory CampaignByCampaignState.initial() = _Initial;
  
  const factory CampaignByCampaignState.loading() = LoadingState;

  const factory CampaignByCampaignState.error(String error) = ErrorState;

  const factory CampaignByCampaignState.loaded(CampaignResponse categories) = LoadedState;

}
