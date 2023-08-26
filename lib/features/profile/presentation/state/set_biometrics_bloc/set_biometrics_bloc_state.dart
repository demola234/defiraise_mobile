part of 'set_biometrics_bloc_bloc.dart';

@freezed

class SetBiometricsBlocState with _$SetBiometricsBlocState {
  const factory SetBiometricsBlocState.initial() = _Initial;
  
  const factory SetBiometricsBlocState.loading() = LoadingState;

  const factory SetBiometricsBlocState.error(String error) = ErrorState;

  const factory SetBiometricsBlocState.loaded(String biometrics) = LoadedState;
}