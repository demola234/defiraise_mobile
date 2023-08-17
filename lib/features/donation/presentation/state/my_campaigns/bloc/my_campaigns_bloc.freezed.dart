// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_campaigns_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyCampaignsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(CampaignResponse campaigns) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(CampaignResponse campaigns)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(CampaignResponse campaigns)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadMyCampaigns value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadMyCampaigns value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadMyCampaigns value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCampaignsStateCopyWith<$Res> {
  factory $MyCampaignsStateCopyWith(
          MyCampaignsState value, $Res Function(MyCampaignsState) then) =
      _$MyCampaignsStateCopyWithImpl<$Res, MyCampaignsState>;
}

/// @nodoc
class _$MyCampaignsStateCopyWithImpl<$Res, $Val extends MyCampaignsState>
    implements $MyCampaignsStateCopyWith<$Res> {
  _$MyCampaignsStateCopyWithImpl(this._value, this._then);

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
    extends _$MyCampaignsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MyCampaignsState.initial()';
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
    required TResult Function(String error) error,
    required TResult Function(CampaignResponse campaigns) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(CampaignResponse campaigns)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(CampaignResponse campaigns)? loaded,
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
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadMyCampaigns value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadMyCampaigns value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadMyCampaigns value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyCampaignsState {
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
    extends _$MyCampaignsStateCopyWithImpl<$Res, _$LoadingState>
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
    return 'MyCampaignsState.loading()';
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
    required TResult Function(String error) error,
    required TResult Function(CampaignResponse campaigns) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(CampaignResponse campaigns)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(CampaignResponse campaigns)? loaded,
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
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadMyCampaigns value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadMyCampaigns value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadMyCampaigns value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements MyCampaignsState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState value, $Res Function(_$ErrorState) then) =
      __$$ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<$Res>
    extends _$MyCampaignsStateCopyWithImpl<$Res, _$ErrorState>
    implements _$$ErrorStateCopyWith<$Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState _value, $Res Function(_$ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MyCampaignsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      __$$ErrorStateCopyWithImpl<_$ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(CampaignResponse campaigns) loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(CampaignResponse campaigns)? loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(CampaignResponse campaigns)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadMyCampaigns value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadMyCampaigns value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadMyCampaigns value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements MyCampaignsState {
  const factory ErrorState(final String error) = _$ErrorState;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMyCampaignsCopyWith<$Res> {
  factory _$$LoadMyCampaignsCopyWith(
          _$LoadMyCampaigns value, $Res Function(_$LoadMyCampaigns) then) =
      __$$LoadMyCampaignsCopyWithImpl<$Res>;
  @useResult
  $Res call({CampaignResponse campaigns});

  $CampaignResponseCopyWith<$Res> get campaigns;
}

/// @nodoc
class __$$LoadMyCampaignsCopyWithImpl<$Res>
    extends _$MyCampaignsStateCopyWithImpl<$Res, _$LoadMyCampaigns>
    implements _$$LoadMyCampaignsCopyWith<$Res> {
  __$$LoadMyCampaignsCopyWithImpl(
      _$LoadMyCampaigns _value, $Res Function(_$LoadMyCampaigns) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaigns = null,
  }) {
    return _then(_$LoadMyCampaigns(
      null == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as CampaignResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CampaignResponseCopyWith<$Res> get campaigns {
    return $CampaignResponseCopyWith<$Res>(_value.campaigns, (value) {
      return _then(_value.copyWith(campaigns: value));
    });
  }
}

/// @nodoc

class _$LoadMyCampaigns implements LoadMyCampaigns {
  const _$LoadMyCampaigns(this.campaigns);

  @override
  final CampaignResponse campaigns;

  @override
  String toString() {
    return 'MyCampaignsState.loaded(campaigns: $campaigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMyCampaigns &&
            (identical(other.campaigns, campaigns) ||
                other.campaigns == campaigns));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaigns);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMyCampaignsCopyWith<_$LoadMyCampaigns> get copyWith =>
      __$$LoadMyCampaignsCopyWithImpl<_$LoadMyCampaigns>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(CampaignResponse campaigns) loaded,
  }) {
    return loaded(campaigns);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(CampaignResponse campaigns)? loaded,
  }) {
    return loaded?.call(campaigns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(CampaignResponse campaigns)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(campaigns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadMyCampaigns value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadMyCampaigns value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadMyCampaigns value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadMyCampaigns implements MyCampaignsState {
  const factory LoadMyCampaigns(final CampaignResponse campaigns) =
      _$LoadMyCampaigns;

  CampaignResponse get campaigns;
  @JsonKey(ignore: true)
  _$$LoadMyCampaignsCopyWith<_$LoadMyCampaigns> get copyWith =>
      throw _privateConstructorUsedError;
}
