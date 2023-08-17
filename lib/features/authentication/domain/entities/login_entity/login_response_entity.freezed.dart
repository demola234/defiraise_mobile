// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  Data? get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({Data? data, dynamic message, int status});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$_LoginResponseCopyWith(
          _$_LoginResponse value, $Res Function(_$_LoginResponse) then) =
      __$$_LoginResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, dynamic message, int status});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponse>
    implements _$$_LoginResponseCopyWith<$Res> {
  __$$_LoginResponseCopyWithImpl(
      _$_LoginResponse _value, $Res Function(_$_LoginResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_$_LoginResponse(
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
class _$_LoginResponse implements _LoginResponse {
  const _$_LoginResponse({this.data, this.message = '', required this.status});

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseFromJson(json);

  @override
  final Data? data;
  @override
  @JsonKey()
  final dynamic message;
  @override
  final int status;

  @override
  String toString() {
    return 'LoginResponse(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponse &&
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
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      __$$_LoginResponseCopyWithImpl<_$_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {final Data? data,
      final dynamic message,
      required final int status}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  Data? get data;
  @override
  dynamic get message;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  dynamic get sessionId => throw _privateConstructorUsedError;
  dynamic get accessToken => throw _privateConstructorUsedError;
  DateTime? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  dynamic get refreshToken => throw _privateConstructorUsedError;
  DateTime? get refreshTokenExpiresAt => throw _privateConstructorUsedError;
  UserResponse get user => throw _privateConstructorUsedError;

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
      {dynamic sessionId,
      dynamic accessToken,
      DateTime? accessTokenExpiresAt,
      dynamic refreshToken,
      DateTime? refreshTokenExpiresAt,
      UserResponse user});

  $UserResponseCopyWith<$Res> get user;
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
    Object? sessionId = freezed,
    Object? accessToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshToken = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get user {
    return $UserResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic sessionId,
      dynamic accessToken,
      DateTime? accessTokenExpiresAt,
      dynamic refreshToken,
      DateTime? refreshTokenExpiresAt,
      UserResponse user});

  @override
  $UserResponseCopyWith<$Res> get user;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? accessToken = freezed,
    Object? accessTokenExpiresAt = freezed,
    Object? refreshToken = freezed,
    Object? refreshTokenExpiresAt = freezed,
    Object? user = null,
  }) {
    return _then(_$_Data(
      sessionId: freezed == sessionId ? _value.sessionId! : sessionId,
      accessToken: freezed == accessToken ? _value.accessToken! : accessToken,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refreshToken:
          freezed == refreshToken ? _value.refreshToken! : refreshToken,
      refreshTokenExpiresAt: freezed == refreshTokenExpiresAt
          ? _value.refreshTokenExpiresAt
          : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_Data implements _Data {
  const _$_Data(
      {this.sessionId = '',
      this.accessToken = '',
      this.accessTokenExpiresAt,
      this.refreshToken = '',
      this.refreshTokenExpiresAt,
      required this.user});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey()
  final dynamic sessionId;
  @override
  @JsonKey()
  final dynamic accessToken;
  @override
  final DateTime? accessTokenExpiresAt;
  @override
  @JsonKey()
  final dynamic refreshToken;
  @override
  final DateTime? refreshTokenExpiresAt;
  @override
  final UserResponse user;

  @override
  String toString() {
    return 'Data(sessionId: $sessionId, accessToken: $accessToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshToken: $refreshToken, refreshTokenExpiresAt: $refreshTokenExpiresAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.sessionId, sessionId) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionId),
      const DeepCollectionEquality().hash(accessToken),
      accessTokenExpiresAt,
      const DeepCollectionEquality().hash(refreshToken),
      refreshTokenExpiresAt,
      user);

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
      {final dynamic sessionId,
      final dynamic accessToken,
      final DateTime? accessTokenExpiresAt,
      final dynamic refreshToken,
      final DateTime? refreshTokenExpiresAt,
      required final UserResponse user}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  dynamic get sessionId;
  @override
  dynamic get accessToken;
  @override
  DateTime? get accessTokenExpiresAt;
  @override
  dynamic get refreshToken;
  @override
  DateTime? get refreshTokenExpiresAt;
  @override
  UserResponse get user;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  dynamic get username => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  DateTime? get passwordChangedAt => throw _privateConstructorUsedError;
  dynamic get isFirstTime => throw _privateConstructorUsedError;
  dynamic get avatar => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  dynamic get biometrics => throw _privateConstructorUsedError;
  dynamic get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {dynamic username,
      dynamic email,
      DateTime? passwordChangedAt,
      dynamic isFirstTime,
      dynamic avatar,
      DateTime? createdAt,
      dynamic address,
      dynamic biometrics,
      dynamic balance});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

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
    Object? isFirstTime = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? address = freezed,
    Object? biometrics = freezed,
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
      isFirstTime: freezed == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      biometrics: freezed == biometrics
          ? _value.biometrics
          : biometrics // ignore: cast_nullable_to_non_nullable
              as dynamic,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$_UserResponseCopyWith(
          _$_UserResponse value, $Res Function(_$_UserResponse) then) =
      __$$_UserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic username,
      dynamic email,
      DateTime? passwordChangedAt,
      dynamic isFirstTime,
      dynamic avatar,
      DateTime? createdAt,
      dynamic address,
      dynamic biometrics,
      dynamic balance});
}

/// @nodoc
class __$$_UserResponseCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$_UserResponse>
    implements _$$_UserResponseCopyWith<$Res> {
  __$$_UserResponseCopyWithImpl(
      _$_UserResponse _value, $Res Function(_$_UserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? passwordChangedAt = freezed,
    Object? isFirstTime = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? address = freezed,
    Object? biometrics = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_UserResponse(
      username: freezed == username ? _value.username! : username,
      email: freezed == email ? _value.email! : email,
      passwordChangedAt: freezed == passwordChangedAt
          ? _value.passwordChangedAt
          : passwordChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFirstTime: freezed == isFirstTime ? _value.isFirstTime! : isFirstTime,
      avatar: freezed == avatar ? _value.avatar! : avatar,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address ? _value.address! : address,
      biometrics: freezed == biometrics ? _value.biometrics! : biometrics,
      balance: freezed == balance ? _value.balance! : balance,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_UserResponse implements _UserResponse {
  const _$_UserResponse(
      {this.username = '',
      this.email = '',
      this.passwordChangedAt,
      this.isFirstTime = false,
      this.avatar = '',
      this.createdAt,
      this.address = '',
      this.biometrics = false,
      this.balance = ''});

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseFromJson(json);

  @override
  @JsonKey()
  final dynamic username;
  @override
  @JsonKey()
  final dynamic email;
  @override
  final DateTime? passwordChangedAt;
  @override
  @JsonKey()
  final dynamic isFirstTime;
  @override
  @JsonKey()
  final dynamic avatar;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final dynamic address;
  @override
  @JsonKey()
  final dynamic biometrics;
  @override
  @JsonKey()
  final dynamic balance;

  @override
  String toString() {
    return 'UserResponse(username: $username, email: $email, passwordChangedAt: $passwordChangedAt, isFirstTime: $isFirstTime, avatar: $avatar, createdAt: $createdAt, address: $address, biometrics: $biometrics, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponse &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            (identical(other.passwordChangedAt, passwordChangedAt) ||
                other.passwordChangedAt == passwordChangedAt) &&
            const DeepCollectionEquality()
                .equals(other.isFirstTime, isFirstTime) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.biometrics, biometrics) &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      passwordChangedAt,
      const DeepCollectionEquality().hash(isFirstTime),
      const DeepCollectionEquality().hash(avatar),
      createdAt,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(biometrics),
      const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      __$$_UserResponseCopyWithImpl<_$_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
      {final dynamic username,
      final dynamic email,
      final DateTime? passwordChangedAt,
      final dynamic isFirstTime,
      final dynamic avatar,
      final DateTime? createdAt,
      final dynamic address,
      final dynamic biometrics,
      final dynamic balance}) = _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  dynamic get username;
  @override
  dynamic get email;
  @override
  DateTime? get passwordChangedAt;
  @override
  dynamic get isFirstTime;
  @override
  dynamic get avatar;
  @override
  DateTime? get createdAt;
  @override
  dynamic get address;
  @override
  dynamic get biometrics;
  @override
  dynamic get balance;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
