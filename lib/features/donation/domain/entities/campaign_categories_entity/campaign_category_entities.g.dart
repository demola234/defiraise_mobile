// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_category_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignCategories _$$_CampaignCategoriesFromJson(
        Map<String, dynamic> json) =>
    _$_CampaignCategories(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] ?? '',
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_CampaignCategoriesToJson(
        _$_CampaignCategories instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      id: json['id'] ?? '',
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'id': instance.id,
    };
