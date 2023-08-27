import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_donors_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'campaign_catergory_usecase_test.mocks.dart';

@GenerateMocks([CampaignRepository])
void main() {
  late GetDonorsUsecase usecase;
  late MockCampaignRepository mockCampaignRepository;
  late String tId;
  late DonorsEntity tResponse;

  setUp(() {
    mockCampaignRepository = MockCampaignRepository();
    usecase = GetDonorsUsecase(mockCampaignRepository);
    tId = "1";

    tResponse = const DonorsEntity(
      data: [
        Donors(
          amount: 0,
          donor: "test",
          image: "test",
          username: "test",
        ),
      ],
      message: "success",
      status: 200,
    );
  });

  final tFailedResponse = DonorsEntity(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockCampaignRepository.getDonors(
      campaignId: tId,
    )).thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(DonorsParams(
      id: tId,
    ));

    // assert
    expect(result, Right(tResponse));
    verify(mockCampaignRepository.getDonors(
      campaignId: tId,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockCampaignRepository.getDonors(
      campaignId: tId,
    )).thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(DonorsParams(
      id: tId,
    ));

    // assert
    expect(result, Left(failure));
    verify(mockCampaignRepository.getDonors(
      campaignId: tId,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });
}
