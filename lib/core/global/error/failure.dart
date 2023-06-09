// 📦 Package imports:
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final String message;

  ServerFailure({this.message = 'Server Failure'});

  @override
  List<Object> get props => [message];
}

class CacheFailure extends Failure {}

class AccessDenied extends Failure {}

class NotificationFailure extends Failure {}


class ImageFailure extends Failure {
  final String message;

  ImageFailure({this.message = 'Image Failure'});

  @override
  List<Object> get props => [message];
}