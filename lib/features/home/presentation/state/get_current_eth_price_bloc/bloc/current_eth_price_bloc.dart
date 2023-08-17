import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/current_eth_price_usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_eth_price_event.dart';
part 'current_eth_price_state.dart';
part 'current_eth_price_bloc.freezed.dart';


class CurrentEthPriceBloc extends Bloc<CurrentEthPriceEvent, CurrentEthPriceState> {
  final CurrentEthPriceUsecase currentEthPriceUsecase;
  CurrentEthPriceBloc({required this.currentEthPriceUsecase}) : super(_Initial()) {
     on<GetCurrentPriceEvent>(_fetchPrice);
  }

  Future<void> _fetchPrice(
      GetCurrentPriceEvent event, Emitter<CurrentEthPriceState> emit) async {
    emit(const CurrentEthPriceState.loading());
    final failureOrSuccess = await currentEthPriceUsecase
        .call(NoParams());
    failureOrSuccess.fold((failure) {
      emit(CurrentEthPriceState.error(failure.errorMessage));
    }, (success) {
      emit(CurrentEthPriceState.loaded(success.data!));
    });
  }
}
