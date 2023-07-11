// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_user_cache_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastUserCachedDetails _$LastUserCachedDetailsFromJson(
    Map<String, dynamic> json) {
  return _LastUserCachedDetails.fromJson(json);
}

/// @nodoc
mixin _$LastUserCachedDetails {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isBiometric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastUserCachedDetailsCopyWith<LastUserCachedDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastUserCachedDetailsCopyWith<$Res> {
  factory $LastUserCachedDetailsCopyWith(LastUserCachedDetails value,
          $Res Function(LastUserCachedDetails) then) =
      _$LastUserCachedDetailsCopyWithImpl<$Res, LastUserCachedDetails>;
  @useResult
  $Res call({String username, String email, String password, bool isBiometric});
}

/// @nodoc
class _$LastUserCachedDetailsCopyWithImpl<$Res,
        $Val extends LastUserCachedDetails>
    implements $LastUserCachedDetailsCopyWith<$Res> {
  _$LastUserCachedDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? isBiometric = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isBiometric: null == isBiometric
          ? _value.isBiometric
          : isBiometric // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LastUserCachedDetailsCopyWith<$Res>
    implements $LastUserCachedDetailsCopyWith<$Res> {
  factory _$$_LastUserCachedDetailsCopyWith(_$_LastUserCachedDetails value,
          $Res Function(_$_LastUserCachedDetails) then) =
      __$$_LastUserCachedDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String email, String password, bool isBiometric});
}

/// @nodoc
class __$$_LastUserCachedDetailsCopyWithImpl<$Res>
    extends _$LastUserCachedDetailsCopyWithImpl<$Res, _$_LastUserCachedDetails>
    implements _$$_LastUserCachedDetailsCopyWith<$Res> {
  __$$_LastUserCachedDetailsCopyWithImpl(_$_LastUserCachedDetails _value,
      $Res Function(_$_LastUserCachedDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? isBiometric = null,
  }) {
    return _then(_$_LastUserCachedDetails(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isBiometric: null == isBiometric
          ? _value.isBiometric
          : isBiometric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastUserCachedDetails implements _LastUserCachedDetails {
  const _$_LastUserCachedDetails(
      {required this.username,
      required this.email,
      required this.password,
      required this.isBiometric});

  factory _$_LastUserCachedDetails.fromJson(Map<String, dynamic> json) =>
      _$$_LastUserCachedDetailsFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final bool isBiometric;

  @override
  String toString() {
    return 'LastUserCachedDetails(username: $username, email: $email, password: $password, isBiometric: $isBiometric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastUserCachedDetails &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isBiometric, isBiometric) ||
                other.isBiometric == isBiometric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, password, isBiometric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastUserCachedDetailsCopyWith<_$_LastUserCachedDetails> get copyWith =>
      __$$_LastUserCachedDetailsCopyWithImpl<_$_LastUserCachedDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastUserCachedDetailsToJson(
      this,
    );
  }
}

abstract class _LastUserCachedDetails implements LastUserCachedDetails {
  const factory _LastUserCachedDetails(
      {required final String username,
      required final String email,
      required final String password,
      required final bool isBiometric}) = _$_LastUserCachedDetails;

  factory _LastUserCachedDetails.fromJson(Map<String, dynamic> json) =
      _$_LastUserCachedDetails.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get isBiometric;
  @override
  @JsonKey(ignore: true)
  _$$_LastUserCachedDetailsCopyWith<_$_LastUserCachedDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
