// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_category_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignCategoriesImpl _$$CampaignCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignCategoriesImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] ?? '',
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$CampaignCategoriesImplToJson(
        _$CampaignCategoriesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      id: json['id'] ?? '',
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'id': instance.id,
    };
