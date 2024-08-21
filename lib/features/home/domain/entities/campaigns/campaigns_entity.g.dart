// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignCategoriesImpl _$$CampaignCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignCategoriesImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] ?? '',
      status: json['status'] ?? 0,
    );

Map<String, dynamic> _$$CampaignCategoriesImplToJson(
        _$CampaignCategoriesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      campaignId: json['campaign_id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      goal: json['goal'] ?? 0.0,
      deadline: json['deadline'] ?? '',
      totalAmountDonated: json['total_amount_donated'] ?? 0.0,
      id: json['id'] ?? 0,
      image: json['image'] ?? '',
      owner: json['owner'] ?? '',
      totalNumber: json['total_number'] ?? 0,
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      donations: (json['donations'] as List<dynamic>?)
          ?.map((e) => Donation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'campaign_id': instance.campaignId,
      'title': instance.title,
      'description': instance.description,
      'goal': instance.goal,
      'deadline': instance.deadline,
      'total_amount_donated': instance.totalAmountDonated,
      'id': instance.id,
      'image': instance.image,
      'owner': instance.owner,
      'total_number': instance.totalNumber,
      'user': instance.user?.map((e) => e.toJson()).toList(),
      'donations': instance.donations?.map((e) => e.toJson()).toList(),
    };

_$DonationImpl _$$DonationImplFromJson(Map<String, dynamic> json) =>
    _$DonationImpl(
      amount: json['amount'] ?? 0.0,
      donor: json['donor'] ?? '',
      image: json['image'] ?? '',
      username: json['username'] ?? 'Anonymous',
    );

Map<String, dynamic> _$$DonationImplToJson(_$DonationImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'donor': instance.donor,
      'image': instance.image,
      'username': instance.username,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      username: json['username'] ?? 'Anonymous',
      email: json['email'] ?? '',
      address: json['address'] ?? '',
      avatar: json['avatar'] ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'avatar': instance.avatar,
    };
