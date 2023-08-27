import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/profile/domain/usecases/change_username_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_username_event.dart';
part 'change_username_state.dart';
part 'change_username_bloc.freezed.dart';


class ChangeUsernameBloc extends Bloc<ChangeUsernameEvent, ChangeUsernameState> {
  final ChangeUsernameUsecase changeUsernameUsecase;
  ChangeUsernameBloc({required this.changeUsernameUsecase})
      : super(_Initial()) {
    on<ChangeUsernameEq>(_changeUsername);
  }

  Future<void> _changeUsername(
      ChangeUsernameEq event, Emitter<ChangeUsernameState> emit) async {
    emit(const ChangeUsernameState.loading());
    final failureOrSuccess = await changeUsernameUsecase
        .call(ChangeUsernameParams(username: event.username!));
    failureOrSuccess.fold((failure) {
      emit(ChangeUsernameState.error(failure.errorMessage));
    }, (success) {
      emit(ChangeUsernameState.loaded(success.data!));
    });
  }
}
