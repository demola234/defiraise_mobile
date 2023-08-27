import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/make_donation_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'campaign_catergory_usecase_test.mocks.dart';

@GenerateMocks([CampaignRepository])
void main() {
  late MakeDonationUsecase usecase;
  late MockCampaignRepository mockCampaignRepository;
  late String tId;
  late String tAmount;
  late BaseEntity tResponse;

  setUp(() {
    mockCampaignRepository = MockCampaignRepository();
    usecase = MakeDonationUsecase(mockCampaignRepository);
    tId = "1";
    tAmount = "1000";

    tResponse = const BaseEntity(
      data: "2000",
      message: "success",
      status: 200,
    );
  });

  final tFailedResponse = BaseEntity(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockCampaignRepository.makeDonation(
      campaignId: tId,
      amount: tAmount,
    )).thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(MakeDonationParams(
      campaignId: tId,
      amount: tAmount,
    ));

    // assert
    expect(result, Right(tResponse));
    verify(mockCampaignRepository.makeDonation(
      campaignId: tId,
      amount: tAmount,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockCampaignRepository.makeDonation(
      campaignId: tId,
      amount: tAmount,
    )).thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(MakeDonationParams(
      campaignId: tId,
      amount: tAmount,
    ));

    // assert
    expect(result, Left(failure));
    verify(mockCampaignRepository.makeDonation(
      campaignId: tId,
      amount: tAmount,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });
}
