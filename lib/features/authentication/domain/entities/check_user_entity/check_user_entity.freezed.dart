// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckUserEntity _$CheckUserEntityFromJson(Map<String, dynamic> json) {
  return _CheckUserEntity.fromJson(json);
}

/// @nodoc
mixin _$CheckUserEntity {
  bool? get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckUserEntityCopyWith<CheckUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUserEntityCopyWith<$Res> {
  factory $CheckUserEntityCopyWith(
          CheckUserEntity value, $Res Function(CheckUserEntity) then) =
      _$CheckUserEntityCopyWithImpl<$Res, CheckUserEntity>;
  @useResult
  $Res call({bool? data, String message, int status});
}

/// @nodoc
class _$CheckUserEntityCopyWithImpl<$Res, $Val extends CheckUserEntity>
    implements $CheckUserEntityCopyWith<$Res> {
  _$CheckUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckUserEntityImplCopyWith<$Res>
    implements $CheckUserEntityCopyWith<$Res> {
  factory _$$CheckUserEntityImplCopyWith(_$CheckUserEntityImpl value,
          $Res Function(_$CheckUserEntityImpl) then) =
      __$$CheckUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? data, String message, int status});
}

/// @nodoc
class __$$CheckUserEntityImplCopyWithImpl<$Res>
    extends _$CheckUserEntityCopyWithImpl<$Res, _$CheckUserEntityImpl>
    implements _$$CheckUserEntityImplCopyWith<$Res> {
  __$$CheckUserEntityImplCopyWithImpl(
      _$CheckUserEntityImpl _value, $Res Function(_$CheckUserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$CheckUserEntityImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckUserEntityImpl implements _CheckUserEntity {
  const _$CheckUserEntityImpl(
      {this.data, required this.message, required this.status});

  factory _$CheckUserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckUserEntityImplFromJson(json);

  @override
  final bool? data;
  @override
  final String message;
  @override
  final int status;

  @override
  String toString() {
    return 'CheckUserEntity(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserEntityImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUserEntityImplCopyWith<_$CheckUserEntityImpl> get copyWith =>
      __$$CheckUserEntityImplCopyWithImpl<_$CheckUserEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckUserEntityImplToJson(
      this,
    );
  }
}

abstract class _CheckUserEntity implements CheckUserEntity {
  const factory _CheckUserEntity(
      {final bool? data,
      required final String message,
      required final int status}) = _$CheckUserEntityImpl;

  factory _CheckUserEntity.fromJson(Map<String, dynamic> json) =
      _$CheckUserEntityImpl.fromJson;

  @override
  bool? get data;
  @override
  String get message;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$CheckUserEntityImplCopyWith<_$CheckUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
