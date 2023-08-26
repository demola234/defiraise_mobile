import 'package:defiraiser_mobile/features/profile/domain/usecases/set_biometrics_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_biometrics_bloc_bloc.freezed.dart';
part 'set_biometrics_bloc_events.dart';
part 'set_biometrics_bloc_state.dart';

class SetBiometricsBlocBloc
    extends Bloc<SetBiometricsBlocEvent, SetBiometricsBlocState> {
  final SetBiometricsUsecase setBiometricsUsecase;
  SetBiometricsBlocBloc({required this.setBiometricsUsecase})
      : super(_Initial()) {
    on<SetBiometricsEvent>(_setBiometrics);
  }

  Future<void> _setBiometrics(
      SetBiometricsEvent event, Emitter<SetBiometricsBlocState> emit) async {
    emit(const SetBiometricsBlocState.loading());
    final failureOrSuccess = await setBiometricsUsecase
        .call(BiometricsParams(biometrics: event.biometrics!));
    failureOrSuccess.fold((failure) {
      emit(SetBiometricsBlocState.error(failure.errorMessage));
    }, (success) {
      emit(SetBiometricsBlocState.loaded(success.data!));
    });
  }
}
