part of 'get_user_details_bloc.dart';


@freezed
class GetUserDetailsState with _$GetUserDetailsState {
  const factory GetUserDetailsState.initial() = _Initial;
  const factory GetUserDetailsState.loading() = _Loading;
  const factory GetUserDetailsState.loadDetails(UserResponse message) =
      _LoadUserDetails;
  const factory GetUserDetailsState.error(String message) = _Error;
}
