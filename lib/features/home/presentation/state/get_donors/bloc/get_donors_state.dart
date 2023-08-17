part of 'get_donors_bloc.dart';


@freezed
class GetDonorsState with _$GetDonorsState {
  const factory GetDonorsState.initial() = _Initial;
  
  const factory GetDonorsState.loading() = LoadingState;

  const factory GetDonorsState.error(String error) = ErrorState;

  const factory GetDonorsState.loaded(DonorsEntity donors) = LoadedState;
}