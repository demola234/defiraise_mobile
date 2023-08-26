import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

AddressEntity addressEntityFromJson(String str) => AddressEntity.fromJson(json.decode(str));

String addressEntityToJson(AddressEntity data) => json.encode(data.toJson());

@freezed
class AddressEntity with _$AddressEntity {
    const factory AddressEntity({
        required Data data,
        @Default('') message,
        required int status,
    }) = _AddressEntity;

    factory AddressEntity.fromJson(Map<String, dynamic> json) => _$AddressEntityFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
    const factory Data({
        @Default('') address,
        @Default('') privateKey,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
