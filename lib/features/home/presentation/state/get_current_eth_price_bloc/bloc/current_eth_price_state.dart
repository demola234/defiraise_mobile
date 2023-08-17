part of 'current_eth_price_bloc.dart';


@freezed
class CurrentEthPriceState with _$CurrentEthPriceState {
  const factory CurrentEthPriceState.initial() = _Initial;
  
  const factory CurrentEthPriceState.loading() = LoadingState;

  const factory CurrentEthPriceState.error(String error) = ErrorState;

  const factory CurrentEthPriceState.loaded(String rate) = LoadedState;

}






