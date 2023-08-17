part of 'create_donation_bloc.dart';


@freezed
class CreateDonationState with _$CreateDonationState {
  const factory CreateDonationState.initial() = _Initial;
  
  const factory CreateDonationState.loading() = LoadingState;

  const factory CreateDonationState.error(String error) = ErrorState;

  const factory CreateDonationState.loaded(String campaignHex) = CreateDonationLoaded;

}
