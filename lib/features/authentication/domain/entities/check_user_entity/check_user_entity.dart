import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_user_entity.freezed.dart';
part 'check_user_entity.g.dart';

CheckUserEntity checkUserEntityFromJson(String str) =>
    CheckUserEntity.fromJson(json.decode(str));

String checkUserEntityToJson(CheckUserEntity data) => json.encode(data.toJson());

@freezed
class CheckUserEntity with _$CheckUserEntity {
  const factory CheckUserEntity({
    bool? data,
    required String message,
    required int status,
  }) = _CheckUserEntity;

  factory CheckUserEntity.fromJson(Map<String, dynamic> json) =>
      _$CheckUserEntityFromJson(json);
}
