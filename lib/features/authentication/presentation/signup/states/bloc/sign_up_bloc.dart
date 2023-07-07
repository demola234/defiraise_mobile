import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/create_account_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final CreateUserAccountUsecase createUserAccountUsecase;
  SignUpBloc({required this.createUserAccountUsecase}) : super(_Initial()) {
    on<RegisterUser>(_onRegisterUser);
  }

  Future<void> _onRegisterUser(
      RegisterUser event, Emitter<SignUpState> emit) async {
    emit(const SignUpState.loading());
    final failureOrSuccess = await createUserAccountUsecase.call(Params(
        email: event.email,
        username: event.username));
    failureOrSuccess.fold((failure) {
      emit(SignUpState.registrationError(failure.errorMessage));
    }, (success) {
      emit(SignUpState.registrationSuccessful(success.message));
    });
  }
}
