import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/data/data_source/campaign_remote_date_source.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';

class ICampaignRepository implements CampaignRepository {
  late CampaignRemoteDataSource remoteDataSource;

  ICampaignRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiError, CampaignResponse>> getCampaigns() async {
    try {
      final remoteCampaign = await remoteDataSource.getCampaigns();
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, CampaignCategories>> getCategories() async {
    try {
      final remoteCampaign = await remoteDataSource.getCategories();
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, CampaignResponse>> getMyCampaigns() async {
    try {
      final remoteCampaign = await remoteDataSource.getMyCampaigns();
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, CampaignResponse>> getDonations() async {
    try {
      final remoteCampaign = await remoteDataSource.getDonations();
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, CampaignResponse>> getCampaignsByCategory(
      {required String id}) async {
    try {
      final remoteCampaign =
          await remoteDataSource.getCampaignsByCategory(id: id);
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> getCurrentEthPrice() async {
    try {
      final remoteCampaign = await remoteDataSource.getCurrentEthPrice();
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> makeDonation(
      {required String campaignId, required String amount}) async {
    try {
      final remoteCampaign = await remoteDataSource.makeDonation(
        campaignId: campaignId,
        amount: amount,
      );
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, DonorsEntity>> getDonors({
    required String campaignId,
  }) async {
    try {
      final remoteCampaign = await remoteDataSource.getDonors(
        campaignId: campaignId,
      );
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }

  @override
  Future<Either<ApiError, BaseEntity>> createDonation(
      {required String title,
      required String description,
      required String amount,
      required String category,
      required String deadline,
      required File images}) async {
    try {
      final remoteCampaign = await remoteDataSource.createDonation(
        title: title,
        description: description,
        amount: amount,
        category: category,
        deadline: deadline,
        images: images,
      );
      return Right(remoteCampaign);
    } on ApiError catch (error) {
      return Left(error);
    }
  }
}
