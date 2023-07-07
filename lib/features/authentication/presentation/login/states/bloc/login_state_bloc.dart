import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/last_user_cache_details/last_user_cache_details.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state_event.dart';
part 'login_state.dart';
part 'login_state_bloc.freezed.dart';

class LoginStateBloc extends Bloc<LoginStateEvent, LoginState> {
  LoginStateBloc() : super(_Initial()) {
    on<LoginStateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
