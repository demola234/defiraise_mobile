part of 'create_donation_bloc.dart';



abstract class CreateDonationEvent extends Equatable {
  const CreateDonationEvent();
  @override
  List<Object?> get props => [];
}

class CreateDonationEventEq extends CreateDonationEvent {
  final String title;
  final String description;
  final String amount;
  final String category;
  final String deadline;
  final File images;

  const CreateDonationEventEq({required this.title,required this.description,required this.amount,required this.category,required this.deadline,required this.images});
}
