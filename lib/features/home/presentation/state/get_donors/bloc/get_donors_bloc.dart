import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_donors_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_donors_bloc.freezed.dart';
part 'get_donors_event.dart';
part 'get_donors_state.dart';

class GetDonorsBloc extends Bloc<GetDonorsEvent, GetDonorsState> {
  final GetDonorsUsecase getDonorsUsecase;
  GetDonorsBloc({required this.getDonorsUsecase}) : super(_Initial()) {
    on<DonationEvent>(_getDonations);
  }

  Future<void> _getDonations(
      DonationEvent event, Emitter<GetDonorsState> emit) async {
    emit(const GetDonorsState.loading());
    final failureOrSuccess =
        await getDonorsUsecase.call(DonorsParams(id: event.campaignId!));
    failureOrSuccess.fold((failure) {
      emit(GetDonorsState.error(failure.errorMessage));
    }, (success) {
      emit(GetDonorsState.loaded(success));
    });
  }
}
