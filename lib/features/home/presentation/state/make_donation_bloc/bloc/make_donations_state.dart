part of 'make_donations_bloc.dart';

@freezed
class MakeDonationsState with _$MakeDonationsState {
  const factory MakeDonationsState.initial() = _Initial;
  
  const factory MakeDonationsState.loading() = LoadingState;

  const factory MakeDonationsState.error(String error) = ErrorState;

  const factory MakeDonationsState.loaded(String transactionHex) = LoadedState;
}