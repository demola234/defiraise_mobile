import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/set_profile_avatar_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_profile_avatar_bloc.freezed.dart';
part 'set_profile_avatar_event.dart';
part 'set_profile_avatar_state.dart';

class SetProfileAvatarBloc
    extends Bloc<SetProfileAvatarEvent, SetProfileAvatarState> {
  final ProfileAvatarUsecase profileAvatarUsecase;
  SetProfileAvatarBloc({
    required this.profileAvatarUsecase,
  }) : super(_Initial()) {
    on<SetProfileAvatarEq>(_setProfileAvatar);
  }

  Future<void> _setProfileAvatar(
      SetProfileAvatarEq event, Emitter<SetProfileAvatarState> emit) async {
    emit(const SetProfileAvatarState.loading());
    final failureOrSuccess = await profileAvatarUsecase
        .call(SetProfileAvatarParams(imageId: event.imageId));
    failureOrSuccess.fold((failure) {
      emit(SetProfileAvatarState.profileError(failure.errorMessage));
    }, (success) {
      emit(SetProfileAvatarState.profileSet(success.avatar));
    });
  }
}
