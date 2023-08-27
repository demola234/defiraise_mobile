// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressEntity _$$_AddressEntityFromJson(Map<String, dynamic> json) =>
    _$_AddressEntity(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] ?? '',
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_AddressEntityToJson(_$_AddressEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      address: json['address'] ?? '',
      privateKey: json['private_key'] ?? '',
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'address': instance.address,
      'private_key': instance.privateKey,
    };
