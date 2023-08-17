part of 'current_eth_price_bloc.dart';
  
abstract class CurrentEthPriceEvent extends Equatable {
  const CurrentEthPriceEvent();
  @override
  List<Object?> get props => [];
}

class GetCurrentPriceEvent extends CurrentEthPriceEvent {}