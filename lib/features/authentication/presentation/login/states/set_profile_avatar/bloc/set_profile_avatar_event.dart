part of 'set_profile_avatar_bloc.dart';


class SetProfileAvatarEvent extends Equatable {
  const SetProfileAvatarEvent();

  @override
  List<Object?> get props => [];

  @override
  bool get stringify => true;
}

class SetProfileAvatarEq extends SetProfileAvatarEvent {
  final int imageId;
 

  const SetProfileAvatarEq({
    required this.imageId,
  });

  @override
  List<Object?> get props => [imageId];
}
