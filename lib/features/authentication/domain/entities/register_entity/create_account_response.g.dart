// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAccountResponseImpl _$$CreateAccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] ?? '',
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateAccountResponseImplToJson(
        _$CreateAccountResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      passwordChangedAt: json['passwordChangedAt'] == null
          ? null
          : DateTime.parse(json['passwordChangedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      address: json['address'] ?? '',
      balance: json['balance'] ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'passwordChangedAt': instance.passwordChangedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'address': instance.address,
      'balance': instance.balance,
    };
