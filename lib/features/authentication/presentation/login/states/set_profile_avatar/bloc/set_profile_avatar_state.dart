part of 'set_profile_avatar_bloc.dart';

@freezed
class SetProfileAvatarState with _$SetProfileAvatarState {
  const factory SetProfileAvatarState.initial() = _Initial;
   const factory SetProfileAvatarState.loading() = _Loading;
  const factory SetProfileAvatarState.profileSet(String message) =
      _SetProfileAvatar;
  const factory SetProfileAvatarState.profileError(String message) =
      _Error;
}
