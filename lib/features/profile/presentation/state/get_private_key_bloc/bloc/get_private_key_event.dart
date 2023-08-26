part of 'get_private_key_bloc.dart';


abstract class GetPrivateKeyEvent extends Equatable {
  const GetPrivateKeyEvent();

  @override
  List<Object> get props => [];
}

class PrivateKeyEvent extends GetPrivateKeyEvent {
  final String? password;

  const PrivateKeyEvent({this.password});
}
