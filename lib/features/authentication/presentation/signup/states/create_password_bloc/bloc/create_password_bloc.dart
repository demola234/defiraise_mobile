import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_user_password_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_password_event.dart';
part 'create_password_state.dart';
part 'create_password_bloc.freezed.dart';



class CreatePasswordBloc extends Bloc<CreatePasswordEvent, CreatePasswordState> {
  final CreateUserPasswordUsecase createUserPasswordUsecase;
  CreatePasswordBloc({
    required this.createUserPasswordUsecase,
  }) : super(_Initial()) {
    on<CreatePasswordEq>(_onCreatePassword);
  }

    Future<void> _onCreatePassword(
      CreatePasswordEq event, Emitter<CreatePasswordState> emit) async {
    emit(const CreatePasswordState.creatingPassword());
    final failureOrSuccess = await createUserPasswordUsecase.call(
        CreatePasswordParams(
            username: event.username,
            biometrics: event.biometrics,
            password: event.password));
    failureOrSuccess.fold((failure) {
      emit(CreatePasswordState.createPasswordError(failure.errorMessage));
    }, (success) {
      emit(CreatePasswordState.createPasswordSuccess(success.message));
    });
  }
}
