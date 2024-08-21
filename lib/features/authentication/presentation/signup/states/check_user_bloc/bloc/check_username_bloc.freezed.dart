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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckUsernameState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingUserImplCopyWith<$Res> {
  factory _$$CheckingUserImplCopyWith(
          _$CheckingUserImpl value, $Res Function(_$CheckingUserImpl) then) =
      __$$CheckingUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingUserImplCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$CheckingUserImpl>
    implements _$$CheckingUserImplCopyWith<$Res> {
  __$$CheckingUserImplCopyWithImpl(
      _$CheckingUserImpl _value, $Res Function(_$CheckingUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingUserImpl implements _CheckingUser {
  const _$CheckingUserImpl();

  @override
  String toString() {
    return 'CheckUsernameState.checkingUsername()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingUserImpl);
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
  const factory _CheckingUser() = _$CheckingUserImpl;
}

/// @nodoc
abstract class _$$CheckUsernameLoadedImplCopyWith<$Res> {
  factory _$$CheckUsernameLoadedImplCopyWith(_$CheckUsernameLoadedImpl value,
          $Res Function(_$CheckUsernameLoadedImpl) then) =
      __$$CheckUsernameLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool message});
}

/// @nodoc
class __$$CheckUsernameLoadedImplCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$CheckUsernameLoadedImpl>
    implements _$$CheckUsernameLoadedImplCopyWith<$Res> {
  __$$CheckUsernameLoadedImplCopyWithImpl(_$CheckUsernameLoadedImpl _value,
      $Res Function(_$CheckUsernameLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CheckUsernameLoadedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckUsernameLoadedImpl implements _CheckUsernameLoaded {
  const _$CheckUsernameLoadedImpl(this.message);

  @override
  final bool message;

  @override
  String toString() {
    return 'CheckUsernameState.checkedUserLoaded(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUsernameLoadedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUsernameLoadedImplCopyWith<_$CheckUsernameLoadedImpl> get copyWith =>
      __$$CheckUsernameLoadedImplCopyWithImpl<_$CheckUsernameLoadedImpl>(
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
      _$CheckUsernameLoadedImpl;

  bool get message;
  @JsonKey(ignore: true)
  _$$CheckUsernameLoadedImplCopyWith<_$CheckUsernameLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckUsernameErrorImplCopyWith<$Res> {
  factory _$$CheckUsernameErrorImplCopyWith(_$CheckUsernameErrorImpl value,
          $Res Function(_$CheckUsernameErrorImpl) then) =
      __$$CheckUsernameErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CheckUsernameErrorImplCopyWithImpl<$Res>
    extends _$CheckUsernameStateCopyWithImpl<$Res, _$CheckUsernameErrorImpl>
    implements _$$CheckUsernameErrorImplCopyWith<$Res> {
  __$$CheckUsernameErrorImplCopyWithImpl(_$CheckUsernameErrorImpl _value,
      $Res Function(_$CheckUsernameErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CheckUsernameErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckUsernameErrorImpl implements _CheckUsernameError {
  const _$CheckUsernameErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckUsernameState.checkUsernameError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUsernameErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUsernameErrorImplCopyWith<_$CheckUsernameErrorImpl> get copyWith =>
      __$$CheckUsernameErrorImplCopyWithImpl<_$CheckUsernameErrorImpl>(
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
      _$CheckUsernameErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CheckUsernameErrorImplCopyWith<_$CheckUsernameErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
