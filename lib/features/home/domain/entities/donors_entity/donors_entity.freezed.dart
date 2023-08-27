// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donors_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DonorsEntity _$DonorsEntityFromJson(Map<String, dynamic> json) {
  return _DonorsEntity.fromJson(json);
}

/// @nodoc
mixin _$DonorsEntity {
  List<Donors>? get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorsEntityCopyWith<DonorsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorsEntityCopyWith<$Res> {
  factory $DonorsEntityCopyWith(
          DonorsEntity value, $Res Function(DonorsEntity) then) =
      _$DonorsEntityCopyWithImpl<$Res, DonorsEntity>;
  @useResult
  $Res call({List<Donors>? data, dynamic message, dynamic status});
}

/// @nodoc
class _$DonorsEntityCopyWithImpl<$Res, $Val extends DonorsEntity>
    implements $DonorsEntityCopyWith<$Res> {
  _$DonorsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Donors>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DonorsEntityCopyWith<$Res>
    implements $DonorsEntityCopyWith<$Res> {
  factory _$$_DonorsEntityCopyWith(
          _$_DonorsEntity value, $Res Function(_$_DonorsEntity) then) =
      __$$_DonorsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Donors>? data, dynamic message, dynamic status});
}

/// @nodoc
class __$$_DonorsEntityCopyWithImpl<$Res>
    extends _$DonorsEntityCopyWithImpl<$Res, _$_DonorsEntity>
    implements _$$_DonorsEntityCopyWith<$Res> {
  __$$_DonorsEntityCopyWithImpl(
      _$_DonorsEntity _value, $Res Function(_$_DonorsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_DonorsEntity(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Donors>?,
      message: freezed == message ? _value.message! : message,
      status: freezed == status ? _value.status! : status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DonorsEntity implements _DonorsEntity {
  const _$_DonorsEntity(
      {final List<Donors>? data, this.message = '', this.status = 0})
      : _data = data;

  factory _$_DonorsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DonorsEntityFromJson(json);

  final List<Donors>? _data;
  @override
  List<Donors>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic message;
  @override
  @JsonKey()
  final dynamic status;

  @override
  String toString() {
    return 'DonorsEntity(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DonorsEntity &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DonorsEntityCopyWith<_$_DonorsEntity> get copyWith =>
      __$$_DonorsEntityCopyWithImpl<_$_DonorsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DonorsEntityToJson(
      this,
    );
  }
}

abstract class _DonorsEntity implements DonorsEntity {
  const factory _DonorsEntity(
      {final List<Donors>? data,
      final dynamic message,
      final dynamic status}) = _$_DonorsEntity;

  factory _DonorsEntity.fromJson(Map<String, dynamic> json) =
      _$_DonorsEntity.fromJson;

  @override
  List<Donors>? get data;
  @override
  dynamic get message;
  @override
  dynamic get status;
  @override
  @JsonKey(ignore: true)
  _$$_DonorsEntityCopyWith<_$_DonorsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

Donors _$DonorsFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Donors {
  dynamic get amount => throw _privateConstructorUsedError;
  dynamic get donor => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorsCopyWith<Donors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorsCopyWith<$Res> {
  factory $DonorsCopyWith(Donors value, $Res Function(Donors) then) =
      _$DonorsCopyWithImpl<$Res, Donors>;
  @useResult
  $Res call({dynamic amount, dynamic donor, dynamic image, dynamic username});
}

/// @nodoc
class _$DonorsCopyWithImpl<$Res, $Val extends Donors>
    implements $DonorsCopyWith<$Res> {
  _$DonorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? donor = freezed,
    Object? image = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      donor: freezed == donor
          ? _value.donor
          : donor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DonorsCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic amount, dynamic donor, dynamic image, dynamic username});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DonorsCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? donor = freezed,
    Object? image = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_Datum(
      amount: freezed == amount ? _value.amount! : amount,
      donor: freezed == donor ? _value.donor! : donor,
      image: freezed == image ? _value.image! : image,
      username: freezed == username ? _value.username! : username,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.amount = 0.0,
      this.donor = '',
      this.image = '',
      this.username = ''});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  @JsonKey()
  final dynamic amount;
  @override
  @JsonKey()
  final dynamic donor;
  @override
  @JsonKey()
  final dynamic image;
  @override
  @JsonKey()
  final dynamic username;

  @override
  String toString() {
    return 'Donors(amount: $amount, donor: $donor, image: $image, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.donor, donor) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(donor),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Donors {
  const factory _Datum(
      {final dynamic amount,
      final dynamic donor,
      final dynamic image,
      final dynamic username}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  dynamic get amount;
  @override
  dynamic get donor;
  @override
  dynamic get image;
  @override
  dynamic get username;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}
