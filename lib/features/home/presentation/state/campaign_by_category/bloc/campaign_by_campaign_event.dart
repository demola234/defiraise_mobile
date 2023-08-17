part of 'campaign_by_campaign_bloc.dart';

abstract class CampaignByCampaignEvent extends Equatable {
  const CampaignByCampaignEvent();
  @override
  List<Object?> get props => [];
}

class FetchCampaignByCategoryEvent extends CampaignByCampaignEvent {
  final String? id;

  const FetchCampaignByCategoryEvent({this.id});
}
