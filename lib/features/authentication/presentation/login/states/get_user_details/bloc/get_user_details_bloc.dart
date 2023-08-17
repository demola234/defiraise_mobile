import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/usecases/get_user_details_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/usecases/usecases.dart';

part 'get_user_details_event.dart';
part 'get_user_details_state.dart';
part 'get_user_details_bloc.freezed.dart';


class GetUserDetailsBloc extends Bloc<GetUserDetailsEvent, GetUserDetailsState> {
  final GetUserDetailsUsecase getUserDetailsUsecase;
  GetUserDetailsBloc({
    required this.getUserDetailsUsecase,
  }) : super(_Initial()) {
    on<GetUserEventEq>(_getUserDetails);
  }

  Future<void> _getUserDetails(
      GetUserEventEq event, Emitter<GetUserDetailsState> emit) async {
    emit(const GetUserDetailsState.loading());
    final failureOrSuccess = await getUserDetailsUsecase
        .call(NoParams());
    failureOrSuccess.fold((failure) {
      emit(GetUserDetailsState.error(failure.errorMessage));
    }, (success) {
      emit(GetUserDetailsState.loadDetails(success));
    });
  }
}
