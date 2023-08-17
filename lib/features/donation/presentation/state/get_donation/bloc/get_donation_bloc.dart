import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_donations_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_donation_event.dart';
part 'get_donation_state.dart';
part 'get_donation_bloc.freezed.dart';



class GetDonationBloc extends Bloc<GetDonationEvent, GetDonationState> {
  final GetDonationsUseCase getDonationsUseCase;
  GetDonationBloc({required this.getDonationsUseCase}) : super(_Initial()) {
    on<FetchDonations>(_fetchDonations);
  }

  Future<void> _fetchDonations(
      FetchDonations event, Emitter<GetDonationState> emit) async {
    emit(const GetDonationState.loading());
    final failureOrSuccess = await getDonationsUseCase.call(NoParams());
    failureOrSuccess.fold((failure) {
      emit(GetDonationState.error(failure.errorMessage));
    }, (success) {
      emit(GetDonationState.loaded(success));
    });
  }
}
