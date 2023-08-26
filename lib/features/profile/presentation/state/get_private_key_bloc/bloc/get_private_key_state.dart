part of 'get_private_key_bloc.dart';


@freezed

class GetPrivateKeyState with _$GetPrivateKeyState {
  const factory GetPrivateKeyState.initial() = _Initial;
  
  const factory GetPrivateKeyState.loading() = LoadingState;

  const factory GetPrivateKeyState.error(String error) = ErrorState;

  const factory GetPrivateKeyState.loaded(AddressEntity address) = LoadedState;
}