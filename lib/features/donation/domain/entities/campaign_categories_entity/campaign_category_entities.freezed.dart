// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_category_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignCategories _$CampaignCategoriesFromJson(Map<String, dynamic> json) {
  return _CampaignCategories.fromJson(json);
}

/// @nodoc
mixin _$CampaignCategories {
  List<Datum> get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignCategoriesCopyWith<CampaignCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCategoriesCopyWith<$Res> {
  factory $CampaignCategoriesCopyWith(
          CampaignCategories value, $Res Function(CampaignCategories) then) =
      _$CampaignCategoriesCopyWithImpl<$Res, CampaignCategories>;
  @useResult
  $Res call({List<Datum> data, dynamic message, int status});
}

/// @nodoc
class _$CampaignCategoriesCopyWithImpl<$Res, $Val extends CampaignCategories>
    implements $CampaignCategoriesCopyWith<$Res> {
  _$CampaignCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
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
}

/// @nodoc
abstract class _$$_CampaignCategoriesCopyWith<$Res>
    implements $CampaignCategoriesCopyWith<$Res> {
  factory _$$_CampaignCategoriesCopyWith(_$_CampaignCategories value,
          $Res Function(_$_CampaignCategories) then) =
      __$$_CampaignCategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum> data, dynamic message, int status});
}

/// @nodoc
class __$$_CampaignCategoriesCopyWithImpl<$Res>
    extends _$CampaignCategoriesCopyWithImpl<$Res, _$_CampaignCategories>
    implements _$$_CampaignCategoriesCopyWith<$Res> {
  __$$_CampaignCategoriesCopyWithImpl(
      _$_CampaignCategories _value, $Res Function(_$_CampaignCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? status = null,
  }) {
    return _then(_$_CampaignCategories(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
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
class _$_CampaignCategories implements _CampaignCategories {
  const _$_CampaignCategories(
      {required final List<Datum> data,
      this.message = '',
      required this.status})
      : _data = data;

  factory _$_CampaignCategories.fromJson(Map<String, dynamic> json) =>
      _$$_CampaignCategoriesFromJson(json);

  final List<Datum> _data;
  @override
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final dynamic message;
  @override
  final int status;

  @override
  String toString() {
    return 'CampaignCategories(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CampaignCategories &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(message),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CampaignCategoriesCopyWith<_$_CampaignCategories> get copyWith =>
      __$$_CampaignCategoriesCopyWithImpl<_$_CampaignCategories>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampaignCategoriesToJson(
      this,
    );
  }
}

abstract class _CampaignCategories implements CampaignCategories {
  const factory _CampaignCategories(
      {required final List<Datum> data,
      final dynamic message,
      required final int status}) = _$_CampaignCategories;

  factory _CampaignCategories.fromJson(Map<String, dynamic> json) =
      _$_CampaignCategories.fromJson;

  @override
  List<Datum> get data;
  @override
  dynamic get message;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_CampaignCategoriesCopyWith<_$_CampaignCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call({dynamic name, dynamic image, dynamic description, dynamic id});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic name, dynamic image, dynamic description, dynamic id});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Datum(
      name: freezed == name ? _value.name! : name,
      image: freezed == image ? _value.image! : image,
      description: freezed == description ? _value.description! : description,
      id: freezed == id ? _value.id! : id,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.name = '', this.image = '', this.description = '', this.id = ''});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  @JsonKey()
  final dynamic name;
  @override
  @JsonKey()
  final dynamic image;
  @override
  @JsonKey()
  final dynamic description;
  @override
  @JsonKey()
  final dynamic id;

  @override
  String toString() {
    return 'Datum(name: $name, image: $image, description: $description, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(id));

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

abstract class _Datum implements Datum {
  const factory _Datum(
      {final dynamic name,
      final dynamic image,
      final dynamic description,
      final dynamic id}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  dynamic get name;
  @override
  dynamic get image;
  @override
  dynamic get description;
  @override
  dynamic get id;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}
