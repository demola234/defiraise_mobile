// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckUserEntityImpl _$$CheckUserEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckUserEntityImpl(
      data: json['data'] as bool?,
      message: json['message'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$CheckUserEntityImplToJson(
        _$CheckUserEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };
