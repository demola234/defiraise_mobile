import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/local/local.dart';
import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:defiraiser_mobile/core/secure/secure_key.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/login_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_state_bloc.freezed.dart';
part 'login_state_event.dart';

class LoginStateBloc extends Bloc<LoginStateEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginStateBloc({required this.loginUseCase}) : super(_Initial()) {
    on<LoginInUserEvent>(_onLoginEvent);
    on<LoginWithFingerPrintEvent>(_onBioLoginEvent);
  }

  Future<void> _onLoginEvent(
      LoginInUserEvent event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final failureOrSuccess = await loginUseCase
        .call(Params(password: event.password, username: event.user));
    failureOrSuccess.fold((failure) {
      emit(LoginState.authenticationFailed(failure.errorMessage));
    }, (success) {
      emit(LoginState.loginSuccessful(success));
    });
  }

  Future<void> _onBioLoginEvent(
      LoginWithFingerPrintEvent event, Emitter<LoginState> emit) async {
    final user = await sl<SecureStorage>()
        .getAuthCredentials(SecureStorageKey().userLogin);

    final bio = await sl<LocalAuth>().authenticate();

    if (bio) {
      emit(const LoginState.loading());
      final failureOrSuccess = await loginUseCase
          .call(Params(password: user!.password, username: user.username));
      failureOrSuccess.fold((failure) {
        emit(LoginState.authenticationFailed(failure.errorMessage));
      }, (success) {
        emit(LoginState.loginSuccessful(success));
      });
    } else {
      emit(LoginState.authenticationFailed('Incorrect Biometrics'));
    }
  }
}
