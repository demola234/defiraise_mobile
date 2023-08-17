part of 'get_donation_bloc.dart';

abstract class GetDonationEvent extends Equatable {
  const GetDonationEvent();
  @override
  List<Object?> get props => [];
}

class FetchDonations extends GetDonationEvent {}