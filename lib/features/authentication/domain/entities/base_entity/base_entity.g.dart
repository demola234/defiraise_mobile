// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseEntityImpl _$$BaseEntityImplFromJson(Map<String, dynamic> json) =>
    _$BaseEntityImpl(
      data: json['data'] as String?,
      message: json['message'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$BaseEntityImplToJson(_$BaseEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };
