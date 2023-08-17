import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaigns_entity.freezed.dart';
part 'campaigns_entity.g.dart';

CampaignResponse campaignCategoriesFromJson(String str) =>
    CampaignResponse.fromJson(json.decode(str));

String campaignCategoriesToJson(CampaignResponse data) =>
    json.encode(data.toJson());

@freezed
class CampaignResponse with _$CampaignResponse {
  const factory CampaignResponse({
    required List<Datum> data,
    @Default('') message,
    @Default(0) status,
  }) = _CampaignCategories;

  factory CampaignResponse.fromJson(Map<String, dynamic> json) =>
      _$CampaignResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Datum({
    @Default('') campaignId,
    @Default('') title,
    @Default('') description,
    @Default(0.0) goal,
    @Default('') deadline,
    @Default(0.0) totalAmountDonated,
    @Default(0) id,
    @Default('') image,
    @Default('') owner,
    @Default(0) totalNumber,
    required List<User> user,
    required List<Donation> donations,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Donation with _$Donation {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Donation({
    @Default(0.0) amount,
    @Default('') donor,
    @Default('') image,
    @Default('') username,
  }) = _Donation;

  factory Donation.fromJson(Map<String, dynamic> json) =>
      _$DonationFromJson(json);
}

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory User({
    @Default('') username,
    @Default('') email,
    @Default('') address,
    @Default('') avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
