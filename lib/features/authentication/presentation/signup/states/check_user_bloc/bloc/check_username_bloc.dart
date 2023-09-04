import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/check_user_exist_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_username_bloc.freezed.dart';
part 'check_username_event.dart';
part 'check_username_state.dart';

class CheckUsernameBloc extends Bloc<CheckUsernameEvent, CheckUsernameState> {
  final CheckUsernameExistUsecase checkUsernameExistUsecase;
  CheckUsernameBloc({
    required this.checkUsernameExistUsecase,
  }) : super(_Initial()) {
    on<CheckUsernameEq>(_checkUsername);
  }

  Future<void> _checkUsername(
      CheckUsernameEq event, Emitter<CheckUsernameState> emit) async {
    emit(const CheckUsernameState.checkingUsername());
    final failureOrSuccess =
        await checkUsernameExistUsecase.call(CheckUsernameExistParams(
      username: event.username,
    ));
    failureOrSuccess.fold((failure) {
      emit(CheckUsernameState.checkUsernameError(failure.errorMessage));
    }, (success) {
      emit(CheckUsernameState.checkedUserLoaded(success.data!));
    });
  }
}
