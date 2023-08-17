// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_user_cache_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastUserCachedDetails _$$_LastUserCachedDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_LastUserCachedDetails(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      isBiometric: json['isBiometric'] as bool,
    );

Map<String, dynamic> _$$_LastUserCachedDetailsToJson(
        _$_LastUserCachedDetails instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'isBiometric': instance.isBiometric,
    };
