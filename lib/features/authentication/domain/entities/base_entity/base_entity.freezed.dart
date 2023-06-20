// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseEntity _$BaseEntityFromJson(Map<String, dynamic> json) {
  return _BaseEntity.fromJson(json);
}

/// @nodoc
mixin _$BaseEntity {
  String? get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseEntityCopyWith<BaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEntityCopyWith<$Res> {
  factory $BaseEntityCopyWith(
          BaseEntity value, $Res Function(BaseEntity) then) =
      _$BaseEntityCopyWithImpl<$Res, BaseEntity>;
  @useResult
  $Res call({String? data, String message, int status});
}

/// @nodoc
class _$BaseEntityCopyWithImpl<$Res, $Val extends BaseEntity>
    implements $BaseEntityCopyWith<$Res> {
  _$BaseEntityCopyWithImpl(this._value, this._then);

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
              as String?,
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
abstract class _$$_BaseEntityCopyWith<$Res>
    implements $BaseEntityCopyWith<$Res> {
  factory _$$_BaseEntityCopyWith(
          _$_BaseEntity value, $Res Function(_$_BaseEntity) then) =
      __$$_BaseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data, String message, int status});
}

/// @nodoc
class __$$_BaseEntityCopyWithImpl<$Res>
    extends _$BaseEntityCopyWithImpl<$Res, _$_BaseEntity>
    implements _$$_BaseEntityCopyWith<$Res> {
  __$$_BaseEntityCopyWithImpl(
      _$_BaseEntity _value, $Res Function(_$_BaseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$_BaseEntity(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_BaseEntity implements _BaseEntity {
  const _$_BaseEntity({this.data, required this.message, required this.status});

  factory _$_BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_BaseEntityFromJson(json);

  @override
  final String? data;
  @override
  final String message;
  @override
  final int status;

  @override
  String toString() {
    return 'BaseEntity(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseEntity &&
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
  _$$_BaseEntityCopyWith<_$_BaseEntity> get copyWith =>
      __$$_BaseEntityCopyWithImpl<_$_BaseEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseEntityToJson(
      this,
    );
  }
}

abstract class _BaseEntity implements BaseEntity {
  const factory _BaseEntity(
      {final String? data,
      required final String message,
      required final int status}) = _$_BaseEntity;

  factory _BaseEntity.fromJson(Map<String, dynamic> json) =
      _$_BaseEntity.fromJson;

  @override
  String? get data;
  @override
  String get message;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_BaseEntityCopyWith<_$_BaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
