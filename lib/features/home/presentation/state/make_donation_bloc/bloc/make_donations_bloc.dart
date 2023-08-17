import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/make_donation_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_donations_bloc.freezed.dart';
part 'make_donations_event.dart';
part 'make_donations_state.dart';

class MakeDonationsBloc extends Bloc<MakeDonationsEvent, MakeDonationsState> {
  final MakeDonationUsecase makeDonationUsecase;
  MakeDonationsBloc({required this.makeDonationUsecase}) : super(_Initial()) {
    on<DonateEvent>(_makeDonation);
  }

  Future<void> _makeDonation(
      DonateEvent event, Emitter<MakeDonationsState> emit) async {
    emit(const MakeDonationsState.loading());
    final failureOrSuccess = await makeDonationUsecase.call(MakeDonationParams(
        campaignId: event.campaignId!, amount: event.amount!));
    failureOrSuccess.fold((failure) {
      emit(MakeDonationsState.error(failure.errorMessage));
    }, (success) {
      emit(MakeDonationsState.loaded(success.data!));
    });
  }
}
