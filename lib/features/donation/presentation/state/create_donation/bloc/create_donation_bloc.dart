import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/create_donation_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_donation_bloc.freezed.dart';
part 'create_donation_event.dart';
part 'create_donation_state.dart';

class CreateDonationBloc
    extends Bloc<CreateDonationEvent, CreateDonationState> {
  final CreateDonationUsecase createDonationUsecase;
  CreateDonationBloc({required this.createDonationUsecase})
      : super(_Initial()) {
    on<CreateDonationEventEq>(_createDonation);
  }

  Future<void> _createDonation(
      CreateDonationEventEq event, Emitter<CreateDonationState> emit) async {
    emit(const CreateDonationState.loading());
    final failureOrSuccess =
        await createDonationUsecase.call(CreateDonationParams(
      deadline: event.deadline,
      description: event.description,
      category: event.category,
      title: event.title,
      images: event.images,
      amount: event.amount,
    ));
    failureOrSuccess.fold((failure) {
      emit(CreateDonationState.error(failure.errorMessage));
    }, (success) {
      emit(CreateDonationState.loaded(success.data!));
    });
  }
}
