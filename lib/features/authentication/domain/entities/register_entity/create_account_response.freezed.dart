// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountResponse _$CreateAccountResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountResponse {
  Data? get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountResponseCopyWith<CreateAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountResponseCopyWith<$Res> {
  factory $CreateAccountResponseCopyWith(CreateAccountResponse value,
          $Res Function(CreateAccountResponse) then) =
      _$CreateAccountResponseCopyWithImpl<$Res, CreateAccountResponse>;
  @useResult
  $Res call({Data? data, dynamic message, int status});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateAccountResponseCopyWithImpl<$Res,
        $Val extends CreateAccountResponse>
    implements $CreateAccountResponseCopyWith<$Res> {
  _$CreateAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateAccountResponseCopyWith<$Res>
    implements $CreateAccountResponseCopyWith<$Res> {
  factory _$$_CreateAccountResponseCopyWith(_$_CreateAccountResponse value,
          $Res Function(_$_CreateAccountResponse) then) =
      __$$_CreateAccountResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, dynamic message, int status});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CreateAccountResponseCopyWithImpl<$Res>
    extends _$CreateAccountResponseCopyWithImpl<$Res, _$_CreateAccountResponse>
    implements _$$_CreateAccountResponseCopyWith<$Res> {
  __$$_CreateAccountResponseCopyWithImpl(_$_CreateAccountResponse _value,
      $Res Function(_$_CreateAccountResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_$_CreateAccountResponse(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message ? _value.message! : message,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAccountResponse implements _CreateAccountResponse {
  const _$_CreateAccountResponse(
      {this.data, this.message = '', required this.status});

  factory _$_CreateAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountResponseFromJson(json);

  @override
  final Data? data;
  @override
  @JsonKey()
  final dynamic message;
  @override
  final int status;

  @override
  String toString() {
    return 'CreateAccountResponse(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountResponse &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, const DeepCollectionEquality().hash(message), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountResponseCopyWith<_$_CreateAccountResponse> get copyWith =>
      __$$_CreateAccountResponseCopyWithImpl<_$_CreateAccountResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAccountResponseToJson(
      this,
    );
  }
}

abstract class _CreateAccountResponse implements CreateAccountResponse {
  const factory _CreateAccountResponse(
      {final Data? data,
      final dynamic message,
      required final int status}) = _$_CreateAccountResponse;

  factory _CreateAccountResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountResponse.fromJson;

  @override
  Data? get data;
  @override
  dynamic get message;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountResponseCopyWith<_$_CreateAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  dynamic get username => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  DateTime? get passwordChangedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  dynamic get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {dynamic username,
      dynamic email,
      DateTime? passwordChangedAt,
      DateTime? createdAt,
      dynamic address,
      dynamic balance});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? passwordChangedAt = freezed,
    Object? createdAt = freezed,
    Object? address = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passwordChangedAt: freezed == passwordChangedAt
          ? _value.passwordChangedAt
          : passwordChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic username,
      dynamic email,
      DateTime? passwordChangedAt,
      DateTime? createdAt,
      dynamic address,
      dynamic balance});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? passwordChangedAt = freezed,
    Object? createdAt = freezed,
    Object? address = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_Data(
      username: freezed == username ? _value.username! : username,
      email: freezed == email ? _value.email! : email,
      passwordChangedAt: freezed == passwordChangedAt
          ? _value.passwordChangedAt
          : passwordChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address ? _value.address! : address,
      balance: freezed == balance ? _value.balance! : balance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.username = '',
      this.email = '',
      this.passwordChangedAt,
      this.createdAt,
      this.address = '',
      this.balance = ''});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey()
  final dynamic username;
  @override
  @JsonKey()
  final dynamic email;
  @override
  final DateTime? passwordChangedAt;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final dynamic address;
  @override
  @JsonKey()
  final dynamic balance;

  @override
  String toString() {
    return 'Data(username: $username, email: $email, passwordChangedAt: $passwordChangedAt, createdAt: $createdAt, address: $address, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            (identical(other.passwordChangedAt, passwordChangedAt) ||
                other.passwordChangedAt == passwordChangedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      passwordChangedAt,
      createdAt,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final dynamic username,
      final dynamic email,
      final DateTime? passwordChangedAt,
      final DateTime? createdAt,
      final dynamic address,
      final dynamic balance}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  dynamic get username;
  @override
  dynamic get email;
  @override
  DateTime? get passwordChangedAt;
  @override
  DateTime? get createdAt;
  @override
  dynamic get address;
  @override
  dynamic get balance;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
