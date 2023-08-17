part of 'get_donation_bloc.dart';

@freezed

class GetDonationState with _$GetDonationState {
  const factory GetDonationState.initial() = _Initial;
  
  const factory GetDonationState.loading() = LoadingState;

  const factory GetDonationState.error(String error) = ErrorState;

  const factory GetDonationState.loaded(CampaignResponse campaigns) = LoadDonation;

}
