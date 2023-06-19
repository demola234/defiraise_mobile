// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAccountResponse _$$_CreateAccountResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAccountResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] ?? '',
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_CreateAccountResponseToJson(
        _$_CreateAccountResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
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

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'passwordChangedAt': instance.passwordChangedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'address': instance.address,
      'balance': instance.balance,
    };
