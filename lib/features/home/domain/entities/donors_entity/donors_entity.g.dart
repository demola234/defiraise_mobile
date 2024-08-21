// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donors_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonorsEntityImpl _$$DonorsEntityImplFromJson(Map<String, dynamic> json) =>
    _$DonorsEntityImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Donors.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] ?? '',
      status: json['status'] ?? 0,
    );

Map<String, dynamic> _$$DonorsEntityImplToJson(_$DonorsEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      amount: json['amount'] ?? 0.0,
      donor: json['donor'] ?? '',
      image: json['image'] ?? '',
      username: json['username'] ?? '',
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'donor': instance.donor,
      'image': instance.image,
      'username': instance.username,
    };
