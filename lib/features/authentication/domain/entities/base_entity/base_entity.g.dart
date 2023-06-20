// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseEntity _$$_BaseEntityFromJson(Map<String, dynamic> json) =>
    _$_BaseEntity(
      data: json['data'] as String?,
      message: json['message'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_BaseEntityToJson(_$_BaseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };
