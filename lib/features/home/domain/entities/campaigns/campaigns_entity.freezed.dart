// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaigns_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignResponse _$CampaignResponseFromJson(Map<String, dynamic> json) {
  return _CampaignCategories.fromJson(json);
}

/// @nodoc
mixin _$CampaignResponse {
  List<Datum> get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignResponseCopyWith<CampaignResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignResponseCopyWith<$Res> {
  factory $CampaignResponseCopyWith(
          CampaignResponse value, $Res Function(CampaignResponse) then) =
      _$CampaignResponseCopyWithImpl<$Res, CampaignResponse>;
  @useResult
  $Res call({List<Datum> data, dynamic message, dynamic status});
}

/// @nodoc
class _$CampaignResponseCopyWithImpl<$Res, $Val extends CampaignResponse>
    implements $CampaignResponseCopyWith<$Res> {
  _$CampaignResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? status = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CampaignCategoriesCopyWith<$Res>
    implements $CampaignResponseCopyWith<$Res> {
  factory _$$_CampaignCategoriesCopyWith(_$_CampaignCategories value,
          $Res Function(_$_CampaignCategories) then) =
      __$$_CampaignCategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum> data, dynamic message, dynamic status});
}

/// @nodoc
class __$$_CampaignCategoriesCopyWithImpl<$Res>
    extends _$CampaignResponseCopyWithImpl<$Res, _$_CampaignCategories>
    implements _$$_CampaignCategoriesCopyWith<$Res> {
  __$$_CampaignCategoriesCopyWithImpl(
      _$_CampaignCategories _value, $Res Function(_$_CampaignCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_CampaignCategories(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      message: freezed == message ? _value.message! : message,
      status: freezed == status ? _value.status! : status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CampaignCategories implements _CampaignCategories {
  const _$_CampaignCategories(
      {required final List<Datum> data, this.message = '', this.status = 0})
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
  @JsonKey()
  final dynamic status;

  @override
  String toString() {
    return 'CampaignResponse(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CampaignCategories &&
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

abstract class _CampaignCategories implements CampaignResponse {
  const factory _CampaignCategories(
      {required final List<Datum> data,
      final dynamic message,
      final dynamic status}) = _$_CampaignCategories;

  factory _CampaignCategories.fromJson(Map<String, dynamic> json) =
      _$_CampaignCategories.fromJson;

  @override
  List<Datum> get data;
  @override
  dynamic get message;
  @override
  dynamic get status;
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
  dynamic get campaignId => throw _privateConstructorUsedError;
  dynamic get title => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get goal => throw _privateConstructorUsedError;
  dynamic get deadline => throw _privateConstructorUsedError;
  dynamic get totalAmountDonated => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get owner => throw _privateConstructorUsedError;
  dynamic get totalNumber => throw _privateConstructorUsedError;
  List<User>? get user => throw _privateConstructorUsedError;
  List<Donation>? get donations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {dynamic campaignId,
      dynamic title,
      dynamic description,
      dynamic goal,
      dynamic deadline,
      dynamic totalAmountDonated,
      dynamic id,
      dynamic image,
      dynamic owner,
      dynamic totalNumber,
      List<User>? user,
      List<Donation>? donations});
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
    Object? campaignId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? goal = freezed,
    Object? deadline = freezed,
    Object? totalAmountDonated = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? owner = freezed,
    Object? totalNumber = freezed,
    Object? user = freezed,
    Object? donations = freezed,
  }) {
    return _then(_value.copyWith(
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalAmountDonated: freezed == totalAmountDonated
          ? _value.totalAmountDonated
          : totalAmountDonated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalNumber: freezed == totalNumber
          ? _value.totalNumber
          : totalNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      donations: freezed == donations
          ? _value.donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<Donation>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic campaignId,
      dynamic title,
      dynamic description,
      dynamic goal,
      dynamic deadline,
      dynamic totalAmountDonated,
      dynamic id,
      dynamic image,
      dynamic owner,
      dynamic totalNumber,
      List<User>? user,
      List<Donation>? donations});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? goal = freezed,
    Object? deadline = freezed,
    Object? totalAmountDonated = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? owner = freezed,
    Object? totalNumber = freezed,
    Object? user = freezed,
    Object? donations = freezed,
  }) {
    return _then(_$_Datum(
      campaignId: freezed == campaignId ? _value.campaignId! : campaignId,
      title: freezed == title ? _value.title! : title,
      description: freezed == description ? _value.description! : description,
      goal: freezed == goal ? _value.goal! : goal,
      deadline: freezed == deadline ? _value.deadline! : deadline,
      totalAmountDonated: freezed == totalAmountDonated
          ? _value.totalAmountDonated!
          : totalAmountDonated,
      id: freezed == id ? _value.id! : id,
      image: freezed == image ? _value.image! : image,
      owner: freezed == owner ? _value.owner! : owner,
      totalNumber: freezed == totalNumber ? _value.totalNumber! : totalNumber,
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      donations: freezed == donations
          ? _value._donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<Donation>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.campaignId = '',
      this.title = '',
      this.description = '',
      this.goal = 0.0,
      this.deadline = '',
      this.totalAmountDonated = 0.0,
      this.id = 0,
      this.image = '',
      this.owner = '',
      this.totalNumber = 0,
      final List<User>? user,
      final List<Donation>? donations})
      : _user = user,
        _donations = donations;

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  @JsonKey()
  final dynamic campaignId;
  @override
  @JsonKey()
  final dynamic title;
  @override
  @JsonKey()
  final dynamic description;
  @override
  @JsonKey()
  final dynamic goal;
  @override
  @JsonKey()
  final dynamic deadline;
  @override
  @JsonKey()
  final dynamic totalAmountDonated;
  @override
  @JsonKey()
  final dynamic id;
  @override
  @JsonKey()
  final dynamic image;
  @override
  @JsonKey()
  final dynamic owner;
  @override
  @JsonKey()
  final dynamic totalNumber;
  final List<User>? _user;
  @override
  List<User>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Donation>? _donations;
  @override
  List<Donation>? get donations {
    final value = _donations;
    if (value == null) return null;
    if (_donations is EqualUnmodifiableListView) return _donations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(campaignId: $campaignId, title: $title, description: $description, goal: $goal, deadline: $deadline, totalAmountDonated: $totalAmountDonated, id: $id, image: $image, owner: $owner, totalNumber: $totalNumber, user: $user, donations: $donations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality()
                .equals(other.campaignId, campaignId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.goal, goal) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality()
                .equals(other.totalAmountDonated, totalAmountDonated) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality()
                .equals(other.totalNumber, totalNumber) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality()
                .equals(other._donations, _donations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(campaignId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(goal),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(totalAmountDonated),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(totalNumber),
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_donations));

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
      {final dynamic campaignId,
      final dynamic title,
      final dynamic description,
      final dynamic goal,
      final dynamic deadline,
      final dynamic totalAmountDonated,
      final dynamic id,
      final dynamic image,
      final dynamic owner,
      final dynamic totalNumber,
      final List<User>? user,
      final List<Donation>? donations}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  dynamic get campaignId;
  @override
  dynamic get title;
  @override
  dynamic get description;
  @override
  dynamic get goal;
  @override
  dynamic get deadline;
  @override
  dynamic get totalAmountDonated;
  @override
  dynamic get id;
  @override
  dynamic get image;
  @override
  dynamic get owner;
  @override
  dynamic get totalNumber;
  @override
  List<User>? get user;
  @override
  List<Donation>? get donations;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

Donation _$DonationFromJson(Map<String, dynamic> json) {
  return _Donation.fromJson(json);
}

/// @nodoc
mixin _$Donation {
  dynamic get amount => throw _privateConstructorUsedError;
  dynamic get donor => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonationCopyWith<Donation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationCopyWith<$Res> {
  factory $DonationCopyWith(Donation value, $Res Function(Donation) then) =
      _$DonationCopyWithImpl<$Res, Donation>;
  @useResult
  $Res call({dynamic amount, dynamic donor, dynamic image, dynamic username});
}

/// @nodoc
class _$DonationCopyWithImpl<$Res, $Val extends Donation>
    implements $DonationCopyWith<$Res> {
  _$DonationCopyWithImpl(this._value, this._then);

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
abstract class _$$_DonationCopyWith<$Res> implements $DonationCopyWith<$Res> {
  factory _$$_DonationCopyWith(
          _$_Donation value, $Res Function(_$_Donation) then) =
      __$$_DonationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic amount, dynamic donor, dynamic image, dynamic username});
}

/// @nodoc
class __$$_DonationCopyWithImpl<$Res>
    extends _$DonationCopyWithImpl<$Res, _$_Donation>
    implements _$$_DonationCopyWith<$Res> {
  __$$_DonationCopyWithImpl(
      _$_Donation _value, $Res Function(_$_Donation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? donor = freezed,
    Object? image = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_Donation(
      amount: freezed == amount ? _value.amount! : amount,
      donor: freezed == donor ? _value.donor! : donor,
      image: freezed == image ? _value.image! : image,
      username: freezed == username ? _value.username! : username,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_Donation implements _Donation {
  const _$_Donation(
      {this.amount = 0.0,
      this.donor = '',
      this.image = '',
      this.username = 'Anonymous'});

  factory _$_Donation.fromJson(Map<String, dynamic> json) =>
      _$$_DonationFromJson(json);

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
    return 'Donation(amount: $amount, donor: $donor, image: $image, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Donation &&
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
  _$$_DonationCopyWith<_$_Donation> get copyWith =>
      __$$_DonationCopyWithImpl<_$_Donation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DonationToJson(
      this,
    );
  }
}

abstract class _Donation implements Donation {
  const factory _Donation(
      {final dynamic amount,
      final dynamic donor,
      final dynamic image,
      final dynamic username}) = _$_Donation;

  factory _Donation.fromJson(Map<String, dynamic> json) = _$_Donation.fromJson;

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
  _$$_DonationCopyWith<_$_Donation> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  dynamic get username => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  dynamic get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({dynamic username, dynamic email, dynamic address, dynamic avatar});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic username, dynamic email, dynamic address, dynamic avatar});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_User(
      username: freezed == username ? _value.username! : username,
      email: freezed == email ? _value.email! : email,
      address: freezed == address ? _value.address! : address,
      avatar: freezed == avatar ? _value.avatar! : avatar,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_User implements _User {
  const _$_User(
      {this.username = 'Anonymous',
      this.email = '',
      this.address = '',
      this.avatar = ''});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final dynamic username;
  @override
  @JsonKey()
  final dynamic email;
  @override
  @JsonKey()
  final dynamic address;
  @override
  @JsonKey()
  final dynamic avatar;

  @override
  String toString() {
    return 'User(username: $username, email: $email, address: $address, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final dynamic username,
      final dynamic email,
      final dynamic address,
      final dynamic avatar}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  dynamic get username;
  @override
  dynamic get email;
  @override
  dynamic get address;
  @override
  dynamic get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
