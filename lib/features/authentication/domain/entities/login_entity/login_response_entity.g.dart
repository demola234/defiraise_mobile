// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] ?? '',
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sessionId: json['session_id'] ?? '',
      accessToken: json['access_token'] ?? '',
      accessTokenExpiresAt: json['access_token_expires_at'] == null
          ? null
          : DateTime.parse(json['access_token_expires_at'] as String),
      refreshToken: json['refresh_token'] ?? '',
      refreshTokenExpiresAt: json['refresh_token_expires_at'] == null
          ? null
          : DateTime.parse(json['refresh_token_expires_at'] as String),
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'access_token': instance.accessToken,
      'access_token_expires_at':
          instance.accessTokenExpiresAt?.toIso8601String(),
      'refresh_token': instance.refreshToken,
      'refresh_token_expires_at':
          instance.refreshTokenExpiresAt?.toIso8601String(),
      'user': instance.user.toJson(),
    };

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      passwordChangedAt: json['password_changed_at'] == null
          ? null
          : DateTime.parse(json['password_changed_at'] as String),
      isFirstTime: json['is_first_time'] ?? false,
      avatar: json['avatar'] ?? '',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      address: json['address'] ?? '',
      biometrics: json['biometrics'] ?? false,
      balance: json['balance'] ?? '',
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password_changed_at': instance.passwordChangedAt?.toIso8601String(),
      'is_first_time': instance.isFirstTime,
      'avatar': instance.avatar,
      'created_at': instance.createdAt?.toIso8601String(),
      'address': instance.address,
      'biometrics': instance.biometrics,
      'balance': instance.balance,
    };
