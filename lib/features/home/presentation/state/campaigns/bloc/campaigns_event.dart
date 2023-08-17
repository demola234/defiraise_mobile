part of 'campaigns_bloc.dart';

abstract class CampaignsEvent extends Equatable {
  const CampaignsEvent();
  @override
  List<Object?> get props => [];
}

class FetchCampaigns extends CampaignsEvent {}