import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_category_entities.freezed.dart';
part 'campaign_category_entities.g.dart';

CampaignCategories campaignCategoriesFromJson(String str) =>
    CampaignCategories.fromJson(json.decode(str));

String campaignCategoriesToJson(CampaignCategories data) =>
    json.encode(data.toJson());

@freezed
class CampaignCategories with _$CampaignCategories {
  const factory CampaignCategories({
    required List<Datum> data,
    @Default('') message,
    required int status,
  }) = _CampaignCategories;

  factory CampaignCategories.fromJson(Map<String, dynamic> json) =>
      _$CampaignCategoriesFromJson(json);
}

@freezed
class Datum with _$Datum {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Datum({
    @Default('') name,
    @Default('') image,
    @Default('') description,
    @Default('') id,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
