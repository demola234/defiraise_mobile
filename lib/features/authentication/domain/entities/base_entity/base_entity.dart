import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

BaseEntity baseEntityFromJson(String str) =>
    BaseEntity.fromJson(json.decode(str));

String baseEntityToJson(BaseEntity data) => json.encode(data.toJson());

@freezed
class BaseEntity with _$BaseEntity {
  const factory BaseEntity({
    String? data,
    required String message,
    required int status,
  }) = _BaseEntity;

  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);
}
