// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donors_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DonorsEntity _$$_DonorsEntityFromJson(Map<String, dynamic> json) =>
    _$_DonorsEntity(
      data: (json['data'] as List<dynamic>)
          .map((e) => Donors.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] ?? '',
      status: json['status'] ?? 0,
    );

Map<String, dynamic> _$$_DonorsEntityToJson(_$_DonorsEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      amount: json['amount'] ?? 0.0,
      donor: json['donor'] ?? '',
      image: json['image'] ?? '',
      username: json['username'] ?? '',
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'amount': instance.amount,
      'donor': instance.donor,
      'image': instance.image,
      'username': instance.username,
    };
