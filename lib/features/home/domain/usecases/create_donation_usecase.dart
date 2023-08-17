import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:equatable/equatable.dart';

class CreateDonationUsecase
    implements UseCase<BaseEntity, CreateDonationParams> {
  final CampaignRepository campaignRepository;

  CreateDonationUsecase(this.campaignRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(CreateDonationParams params) async {
    return await campaignRepository.createDonation(
        title: params.title,
        description: params.description,
        category: params.category,
        deadline: params.deadline,
        images: params.images,
        amount: params.amount);
  }
}

class CreateDonationParams extends Equatable {
  final String title;
  final String description;
  final String amount;
  final String category;
  final String deadline;
  final File images;

  const CreateDonationParams(
      {required this.title,
      required this.description,
      required this.amount,
      required this.category,
      required this.deadline,
      required this.images});

  @override
  List<Object> get props =>
      [title, amount, description, category, deadline, images];
}
