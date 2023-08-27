import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/create_donation_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'campaign_catergory_usecase_test.mocks.dart';

@GenerateMocks([CampaignRepository])
void main() {
  late CreateDonationUsecase usecase;
  late MockCampaignRepository mockCampaignRepository;
  late String tAmount;
  late String tCategory;
  late String tDescription;
  late String tTitle;
  late String tDeadline;
  late File tImages;
  late BaseEntity tResponse;

  setUp(() {
    mockCampaignRepository = MockCampaignRepository();
    usecase = CreateDonationUsecase(mockCampaignRepository);
    tAmount = "0.1";
    tCategory = "test";
    tDescription = "test";
    tTitle = "test";
    tDeadline = "2023-09-20T14:08:19+01:00";
    tImages = File("test");

    tResponse = const BaseEntity(data: "test", message: "success", status: 200);
  });

  final tFailedResponse = CreateAccountResponse(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockCampaignRepository.createDonation(
      amount: tAmount,
      category: tCategory,
      description: tDescription,
      title: tTitle,
      deadline: tDeadline,
      images: tImages,
    )).thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(CreateDonationParams(
      amount: tAmount,
      category: tCategory,
      description: tDescription,
      title: tTitle,
      deadline: tDeadline,
      images: tImages,
    ));

    // assert
    expect(result, Right(tResponse));
    verify(mockCampaignRepository.createDonation(
      amount: tAmount,
      category: tCategory,
      description: tDescription,
      title: tTitle,
      deadline: tDeadline,
      images: tImages,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockCampaignRepository.createDonation(
      amount: tAmount,
      category: tCategory,
      description: tDescription,
      title: tTitle,
      deadline: tDeadline,
      images: tImages,
    )).thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(CreateDonationParams(
      amount: tAmount,
      category: tCategory,
      description: tDescription,
      title: tTitle,
      deadline: tDeadline,
      images: tImages,
    ));

    // assert
    expect(result, Left(failure));
    verify(mockCampaignRepository.createDonation(
      amount: tAmount,
      category: tCategory,
      description: tDescription,
      title: tTitle,
      deadline: tDeadline,
      images: tImages,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });
}
