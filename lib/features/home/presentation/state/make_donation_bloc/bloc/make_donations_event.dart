part of 'make_donations_bloc.dart';


abstract class MakeDonationsEvent extends Equatable {
  const MakeDonationsEvent();
  @override
  List<Object?> get props => [];
}

class DonateEvent extends MakeDonationsEvent {
  final String? campaignId;
  final String? amount;

  const DonateEvent({this.campaignId, this.amount});
}
