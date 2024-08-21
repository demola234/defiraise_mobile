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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$BaseEntityImplCopyWith<$Res>
    implements $BaseEntityCopyWith<$Res> {
  factory _$$BaseEntityImplCopyWith(
          _$BaseEntityImpl value, $Res Function(_$BaseEntityImpl) then) =
      __$$BaseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? data, String message, int status});
}

/// @nodoc
class __$$BaseEntityImplCopyWithImpl<$Res>
    extends _$BaseEntityCopyWithImpl<$Res, _$BaseEntityImpl>
    implements _$$BaseEntityImplCopyWith<$Res> {
  __$$BaseEntityImplCopyWithImpl(
      _$BaseEntityImpl _value, $Res Function(_$BaseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$BaseEntityImpl(
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
class _$BaseEntityImpl implements _BaseEntity {
  const _$BaseEntityImpl(
      {this.data, required this.message, required this.status});

  factory _$BaseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseEntityImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEntityImpl &&
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
  _$$BaseEntityImplCopyWith<_$BaseEntityImpl> get copyWith =>
      __$$BaseEntityImplCopyWithImpl<_$BaseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseEntityImplToJson(
      this,
    );
  }
}

abstract class _BaseEntity implements BaseEntity {
  const factory _BaseEntity(
      {final String? data,
      required final String message,
      required final int status}) = _$BaseEntityImpl;

  factory _BaseEntity.fromJson(Map<String, dynamic> json) =
      _$BaseEntityImpl.fromJson;

  @override
  String? get data;
  @override
  String get message;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$BaseEntityImplCopyWith<_$BaseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
