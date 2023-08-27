part of 'set_biometrics_bloc_bloc.dart';

abstract class SetBiometricsBlocEvent extends Equatable {
  const SetBiometricsBlocEvent();

  @override
  List<Object> get props => [];
}

class SetBiometricsEvent extends SetBiometricsBlocEvent {
  final bool? biometrics;

  const SetBiometricsEvent({this.biometrics});
}
