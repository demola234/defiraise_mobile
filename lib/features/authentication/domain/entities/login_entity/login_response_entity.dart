import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_entity.freezed.dart';
part 'login_response_entity.g.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
     Data? data,
    @Default('') message,
    required int status,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Data({
    @Default('') sessionId,
    @Default('') accessToken,
    DateTime? accessTokenExpiresAt,
    @Default('') refreshToken,
    DateTime? refreshTokenExpiresAt,
    required User user,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory User({
    @Default('') username,
    @Default('') email,
    DateTime? passwordChangedAt,
    DateTime? createdAt,
    @Default('') address,
    @Default('') balance,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
