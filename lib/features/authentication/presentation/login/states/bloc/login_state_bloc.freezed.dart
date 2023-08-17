// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) authenticationFailed,
    required TResult Function(LoginResponse response) loginSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? authenticationFailed,
    TResult? Function(LoginResponse response)? loginSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? authenticationFailed,
    TResult Function(LoginResponse response)? loginSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthFailedState value) authenticationFailed,
    required TResult Function(AuthLoadedState value) loginSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthFailedState value)? authenticationFailed,
    TResult? Function(AuthLoadedState value)? loginSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthFailedState value)? authenticationFailed,
    TResult Function(AuthLoadedState value)? loginSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function() loading,
    required TResult Function(String error) authenticationFailed,
    required TResult Function(LoginResponse response) loginSuccessful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? authenticationFailed,
    TResult? Function(LoginResponse response)? loginSuccessful,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? authenticationFailed,
    TResult Function(LoginResponse response)? loginSuccessful,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthFailedState value) authenticationFailed,
    required TResult Function(AuthLoadedState value) loginSuccessful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthFailedState value)? authenticationFailed,
    TResult? Function(AuthLoadedState value)? loginSuccessful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthFailedState value)? authenticationFailed,
    TResult Function(AuthLoadedState value)? loginSuccessful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) authenticationFailed,
    required TResult Function(LoginResponse response) loginSuccessful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? authenticationFailed,
    TResult? Function(LoginResponse response)? loginSuccessful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? authenticationFailed,
    TResult Function(LoginResponse response)? loginSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthFailedState value) authenticationFailed,
    required TResult Function(AuthLoadedState value) loginSuccessful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthFailedState value)? authenticationFailed,
    TResult? Function(AuthLoadedState value)? loginSuccessful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthFailedState value)? authenticationFailed,
    TResult Function(AuthLoadedState value)? loginSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements LoginState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$AuthFailedStateCopyWith<$Res> {
  factory _$$AuthFailedStateCopyWith(
          _$AuthFailedState value, $Res Function(_$AuthFailedState) then) =
      __$$AuthFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthFailedStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$AuthFailedState>
    implements _$$AuthFailedStateCopyWith<$Res> {
  __$$AuthFailedStateCopyWithImpl(
      _$AuthFailedState _value, $Res Function(_$AuthFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthFailedState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailedState implements AuthFailedState {
  const _$AuthFailedState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.authenticationFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailedState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailedStateCopyWith<_$AuthFailedState> get copyWith =>
      __$$AuthFailedStateCopyWithImpl<_$AuthFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) authenticationFailed,
    required TResult Function(LoginResponse response) loginSuccessful,
  }) {
    return authenticationFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? authenticationFailed,
    TResult? Function(LoginResponse response)? loginSuccessful,
  }) {
    return authenticationFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? authenticationFailed,
    TResult Function(LoginResponse response)? loginSuccessful,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthFailedState value) authenticationFailed,
    required TResult Function(AuthLoadedState value) loginSuccessful,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthFailedState value)? authenticationFailed,
    TResult? Function(AuthLoadedState value)? loginSuccessful,
  }) {
    return authenticationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthFailedState value)? authenticationFailed,
    TResult Function(AuthLoadedState value)? loginSuccessful,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class AuthFailedState implements LoginState {
  const factory AuthFailedState(final String error) = _$AuthFailedState;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthFailedStateCopyWith<_$AuthFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoadedStateCopyWith<$Res> {
  factory _$$AuthLoadedStateCopyWith(
          _$AuthLoadedState value, $Res Function(_$AuthLoadedState) then) =
      __$$AuthLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponse response});

  $LoginResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$AuthLoadedStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$AuthLoadedState>
    implements _$$AuthLoadedStateCopyWith<$Res> {
  __$$AuthLoadedStateCopyWithImpl(
      _$AuthLoadedState _value, $Res Function(_$AuthLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$AuthLoadedState(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<$Res> get response {
    return $LoginResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$AuthLoadedState implements AuthLoadedState {
  const _$AuthLoadedState(this.response);

  @override
  final LoginResponse response;

  @override
  String toString() {
    return 'LoginState.loginSuccessful(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoadedState &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoadedStateCopyWith<_$AuthLoadedState> get copyWith =>
      __$$AuthLoadedStateCopyWithImpl<_$AuthLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) authenticationFailed,
    required TResult Function(LoginResponse response) loginSuccessful,
  }) {
    return loginSuccessful(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? authenticationFailed,
    TResult? Function(LoginResponse response)? loginSuccessful,
  }) {
    return loginSuccessful?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? authenticationFailed,
    TResult Function(LoginResponse response)? loginSuccessful,
    required TResult orElse(),
  }) {
    if (loginSuccessful != null) {
      return loginSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthFailedState value) authenticationFailed,
    required TResult Function(AuthLoadedState value) loginSuccessful,
  }) {
    return loginSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthFailedState value)? authenticationFailed,
    TResult? Function(AuthLoadedState value)? loginSuccessful,
  }) {
    return loginSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthFailedState value)? authenticationFailed,
    TResult Function(AuthLoadedState value)? loginSuccessful,
    required TResult orElse(),
  }) {
    if (loginSuccessful != null) {
      return loginSuccessful(this);
    }
    return orElse();
  }
}

abstract class AuthLoadedState implements LoginState {
  const factory AuthLoadedState(final LoginResponse response) =
      _$AuthLoadedState;

  LoginResponse get response;
  @JsonKey(ignore: true)
  _$$AuthLoadedStateCopyWith<_$AuthLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
