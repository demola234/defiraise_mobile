import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/profile/domain/usecases/change_password_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';


class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUsecase changePasswordUsecase;
  ChangePasswordBloc({required this.changePasswordUsecase})
      : super(_Initial()) {
    on<ChangePasswordEq>(_changePassword);
  }

  Future<void> _changePassword(
      ChangePasswordEq event, Emitter<ChangePasswordState> emit) async {
    emit(const ChangePasswordState.loading());
    final failureOrSuccess = await changePasswordUsecase
        .call(ChangePasswordParams(newPassword: event.newPassword!, oldPassword: event.oldPassword!));
    failureOrSuccess.fold((failure) {
      emit(ChangePasswordState.error(failure.errorMessage));
    }, (success) {
      emit(ChangePasswordState.loaded(success.data!));
    });
  }
}
