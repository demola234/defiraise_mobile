import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/local/local.dart';
import 'package:defiraiser_mobile/core/secure/secure.dart';
import 'package:defiraiser_mobile/core/secure/secure_key.dart';
import 'package:defiraiser_mobile/features/profile/domain/entities/address_entity/address_entity.dart';
import 'package:defiraiser_mobile/features/profile/domain/usecases/get_privatekey_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_private_key_bloc.freezed.dart';
part 'get_private_key_event.dart';
part 'get_private_key_state.dart';

class GetPrivateKeyBloc extends Bloc<GetPrivateKeyEvent, GetPrivateKeyState> {
  final GetPrivateUseCaseKey getPrivateUseCaseKey;
  GetPrivateKeyBloc({required this.getPrivateUseCaseKey}) : super(_Initial()) {
    on<PrivateKeyEvent>(_getPrivateKey);
  }

  Future<void> _getPrivateKey(
      PrivateKeyEvent event, Emitter<GetPrivateKeyState> emit) async {
    final user = await sl<SecureStorage>()
        .getAuthCredentials(SecureStorageKey().userLogin);

    if (event.isBio!) {
      final bio = await sl<LocalAuth>().authenticate();
      if (bio) {
        emit(const GetPrivateKeyState.loading());
        final failureOrSuccess = await getPrivateUseCaseKey
            .call(GetPrivateKeyParams(password: event.password!));
        failureOrSuccess.fold((failure) {
          emit(GetPrivateKeyState.error(failure.errorMessage));
        }, (success) {
          emit(GetPrivateKeyState.loaded(success));
        });
      } else {
        emit(const GetPrivateKeyState.error('Biometric not found'));
      }
    } else {
      emit(const GetPrivateKeyState.loading());
      final failureOrSuccess = await getPrivateUseCaseKey
          .call(GetPrivateKeyParams(password: event.password!));
      failureOrSuccess.fold((failure) {
        emit(GetPrivateKeyState.error(failure.errorMessage));
      }, (success) {
        emit(GetPrivateKeyState.loaded(success));
      });
    }
  }
}
