import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'donors_entity.freezed.dart';
part 'donors_entity.g.dart';

DonorsEntity donorsEntityFromJson(String str) =>
    DonorsEntity.fromJson(json.decode(str));

String donorsEntityToJson(DonorsEntity data) => json.encode(data.toJson());

@freezed
class DonorsEntity with _$DonorsEntity {
  const factory DonorsEntity({
    List<Donors>? data,
    @Default('') message,
    @Default(0) status,
  }) = _DonorsEntity;

  factory DonorsEntity.fromJson(Map<String, dynamic> json) =>
      _$DonorsEntityFromJson(json);
}

@freezed
class Donors with _$Donors {
  const factory Donors({
    @Default(0.0) amount,
    @Default('') donor,
    @Default('') image,
    @Default('') username,
  }) = _Datum;

  factory Donors.fromJson(Map<String, dynamic> json) => _$DonorsFromJson(json);
}
