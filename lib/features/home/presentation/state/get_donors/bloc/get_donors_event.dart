part of 'get_donors_bloc.dart';


abstract class GetDonorsEvent extends Equatable {
  const GetDonorsEvent();
  @override
  List<Object?> get props => [];
}

class DonationEvent extends GetDonorsEvent {
  final String? campaignId;

  const DonationEvent({this.campaignId});
}
