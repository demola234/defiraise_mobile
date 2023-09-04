// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_username_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckUsernameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUsername,
    required TResult Function(bool message) checkedUserLoaded,
    required TResult Function(String message) checkUsernameError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUsername,
    TResult? Function(bool message)? checkedUserLoaded,
    TResult? Function(String message)? checkUsernameError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUsername,
    TResult Function(bool message)? checkedUserLoaded,
    TResult Function(String message)? checkUsernameError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUsername,
    required TResult Function(_CheckUsernameLoaded value) checkedUserLoaded,
    required TResult Function(_CheckUsernameError value) checkUsernameError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUsername,
    TResult? Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult? Function(_CheckUsernameError value)? checkUsernameError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUsername,
    TResult Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult Function(_CheckUsernameError value)? checkUsernameError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUsernameStateCopyWith<$Res> {
  factory $CheckUsernameStateCopyWith(
          CheckUsernameState value, $Res Function(CheckUsernameState) then) =
      _$CheckUsernameStateCopyWithImpl<$Res, CheckUsernameState>;
}

/// @nodoc
class _$CheckUsernameStateCopyWithImpl<$Res, $Val extends CheckUsernameState>
    implements $CheckUsernameStateCopyWith<$Res> {
  _$CheckUsernameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CheckUsernameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUsername,
    required TResult Function(bool message) checkedUserLoaded,
    required TResult Function(String message) checkUsernameError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUsername,
    TResult? Function(bool message)? checkedUserLoaded,
    TResult? Function(String message)? checkUsernameError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUsername,
    TResult Function(bool message)? checkedUserLoaded,
    TResult Function(String message)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUsername,
    required TResult Function(_CheckUsernameLoaded value) checkedUserLoaded,
    required TResult Function(_CheckUsernameError value) checkUsernameError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUsername,
    TResult? Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult? Function(_CheckUsernameError value)? checkUsernameError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUsername,
    TResult Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult Function(_CheckUsernameError value)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckUsernameState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CheckingUserCopyWith<$Res> {
  factory _$$_CheckingUserCopyWith(
          _$_CheckingUser value, $Res Function(_$_CheckingUser) then) =
      __$$_CheckingUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckingUserCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$_CheckingUser>
    implements _$$_CheckingUserCopyWith<$Res> {
  __$$_CheckingUserCopyWithImpl(
      _$_CheckingUser _value, $Res Function(_$_CheckingUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckingUser implements _CheckingUser {
  const _$_CheckingUser();

  @override
  String toString() {
    return 'CheckUsernameState.checkingUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckingUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUsername,
    required TResult Function(bool message) checkedUserLoaded,
    required TResult Function(String message) checkUsernameError,
  }) {
    return checkingUsername();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUsername,
    TResult? Function(bool message)? checkedUserLoaded,
    TResult? Function(String message)? checkUsernameError,
  }) {
    return checkingUsername?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUsername,
    TResult Function(bool message)? checkedUserLoaded,
    TResult Function(String message)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (checkingUsername != null) {
      return checkingUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUsername,
    required TResult Function(_CheckUsernameLoaded value) checkedUserLoaded,
    required TResult Function(_CheckUsernameError value) checkUsernameError,
  }) {
    return checkingUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUsername,
    TResult? Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult? Function(_CheckUsernameError value)? checkUsernameError,
  }) {
    return checkingUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUsername,
    TResult Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult Function(_CheckUsernameError value)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (checkingUsername != null) {
      return checkingUsername(this);
    }
    return orElse();
  }
}

abstract class _CheckingUser implements CheckUsernameState {
  const factory _CheckingUser() = _$_CheckingUser;
}

/// @nodoc
abstract class _$$_CheckUsernameLoadedCopyWith<$Res> {
  factory _$$_CheckUsernameLoadedCopyWith(_$_CheckUsernameLoaded value,
          $Res Function(_$_CheckUsernameLoaded) then) =
      __$$_CheckUsernameLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool message});
}

/// @nodoc
class __$$_CheckUsernameLoadedCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$_CheckUsernameLoaded>
    implements _$$_CheckUsernameLoadedCopyWith<$Res> {
  __$$_CheckUsernameLoadedCopyWithImpl(_$_CheckUsernameLoaded _value,
      $Res Function(_$_CheckUsernameLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CheckUsernameLoaded(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckUsernameLoaded implements _CheckUsernameLoaded {
  const _$_CheckUsernameLoaded(this.message);

  @override
  final bool message;

  @override
  String toString() {
    return 'CheckUsernameState.checkedUserLoaded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckUsernameLoaded &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckUsernameLoadedCopyWith<_$_CheckUsernameLoaded> get copyWith =>
      __$$_CheckUsernameLoadedCopyWithImpl<_$_CheckUsernameLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUsername,
    required TResult Function(bool message) checkedUserLoaded,
    required TResult Function(String message) checkUsernameError,
  }) {
    return checkedUserLoaded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUsername,
    TResult? Function(bool message)? checkedUserLoaded,
    TResult? Function(String message)? checkUsernameError,
  }) {
    return checkedUserLoaded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUsername,
    TResult Function(bool message)? checkedUserLoaded,
    TResult Function(String message)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (checkedUserLoaded != null) {
      return checkedUserLoaded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUsername,
    required TResult Function(_CheckUsernameLoaded value) checkedUserLoaded,
    required TResult Function(_CheckUsernameError value) checkUsernameError,
  }) {
    return checkedUserLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUsername,
    TResult? Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult? Function(_CheckUsernameError value)? checkUsernameError,
  }) {
    return checkedUserLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUsername,
    TResult Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult Function(_CheckUsernameError value)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (checkedUserLoaded != null) {
      return checkedUserLoaded(this);
    }
    return orElse();
  }
}

abstract class _CheckUsernameLoaded implements CheckUsernameState {
  const factory _CheckUsernameLoaded(final bool message) =
      _$_CheckUsernameLoaded;

  bool get message;
  @JsonKey(ignore: true)
  _$$_CheckUsernameLoadedCopyWith<_$_CheckUsernameLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckUsernameErrorCopyWith<$Res> {
  factory _$$_CheckUsernameErrorCopyWith(_$_CheckUsernameError value,
          $Res Function(_$_CheckUsernameError) then) =
      __$$_CheckUsernameErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CheckUsernameErrorCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$_CheckUsernameError>
    implements _$$_CheckUsernameErrorCopyWith<$Res> {
  __$$_CheckUsernameErrorCopyWithImpl(
      _$_CheckUsernameError _value, $Res Function(_$_CheckUsernameError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CheckUsernameError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckUsernameError implements _CheckUsernameError {
  const _$_CheckUsernameError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckUsernameState.checkUsernameError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckUsernameError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckUsernameErrorCopyWith<_$_CheckUsernameError> get copyWith =>
      __$$_CheckUsernameErrorCopyWithImpl<_$_CheckUsernameError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUsername,
    required TResult Function(bool message) checkedUserLoaded,
    required TResult Function(String message) checkUsernameError,
  }) {
    return checkUsernameError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUsername,
    TResult? Function(bool message)? checkedUserLoaded,
    TResult? Function(String message)? checkUsernameError,
  }) {
    return checkUsernameError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUsername,
    TResult Function(bool message)? checkedUserLoaded,
    TResult Function(String message)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (checkUsernameError != null) {
      return checkUsernameError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUsername,
    required TResult Function(_CheckUsernameLoaded value) checkedUserLoaded,
    required TResult Function(_CheckUsernameError value) checkUsernameError,
  }) {
    return checkUsernameError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUsername,
    TResult? Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult? Function(_CheckUsernameError value)? checkUsernameError,
  }) {
    return checkUsernameError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUsername,
    TResult Function(_CheckUsernameLoaded value)? checkedUserLoaded,
    TResult Function(_CheckUsernameError value)? checkUsernameError,
    required TResult orElse(),
  }) {
    if (checkUsernameError != null) {
      return checkUsernameError(this);
    }
    return orElse();
  }
}

abstract class _CheckUsernameError implements CheckUsernameState {
  const factory _CheckUsernameError(final String message) =
      _$_CheckUsernameError;

  String get message;
  @JsonKey(ignore: true)
  _$$_CheckUsernameErrorCopyWith<_$_CheckUsernameError> get copyWith =>
      throw _privateConstructorUsedError;
}
