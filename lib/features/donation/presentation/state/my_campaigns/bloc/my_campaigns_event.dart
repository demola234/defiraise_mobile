part of 'my_campaigns_bloc.dart';

abstract class CampaignsEvent extends Equatable {
  const CampaignsEvent();
  @override
  List<Object?> get props => [];
}

class FetchMyCampaigns extends CampaignsEvent {}