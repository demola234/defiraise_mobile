import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_campaign_by_category_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'campaign_catergory_usecase_test.mocks.dart';

@GenerateMocks([CampaignRepository])
void main() {
  late GetCampaignByCategoryUseCase usecase;
  late MockCampaignRepository mockCampaignRepository;
  late String tId;
  late CampaignResponse tResponse;

  setUp(() {
    mockCampaignRepository = MockCampaignRepository();
    usecase = GetCampaignByCategoryUseCase(mockCampaignRepository);
    tId = "1";

    tResponse = const CampaignResponse(
      data: [
        Datum(
          campaignId: "test",
          title: "test",
          description: "test",
          deadline: "test",
          goal: 0,
          image: "test",
          id: 0,
          owner: "test",
          totalAmountDonated: 0,
          totalNumber: 0,
          user: [
            User(
              address: "test",
              username: "test",
              avatar: "test",
              email: "test",
            ),
          ],
          donations: [
            Donation(
              amount: 0,
              donor: "test",
              image: "test",
              username: "test",
            ),
          ],
        )
      ],
      message: "success",
      status: 200,
    );
  });

  final tFailedResponse = CampaignResponse(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockCampaignRepository.getCampaignsByCategory(
      id: tId,
    )).thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(CampaignByCategoryParams(
      id: tId,
    ));

    // assert
    expect(result, Right(tResponse));
    verify(mockCampaignRepository.getCampaignsByCategory(
      id: tId,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });

  test('should not get the user info when create account fails', () async {
    // arrange
    when(mockCampaignRepository.getCampaignsByCategory(
      id: tId,
    )).thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(CampaignByCategoryParams(
      id: tId,
    ));

    // assert
    expect(result, Left(failure));
    verify(mockCampaignRepository.getCampaignsByCategory(
      id: tId,
    ));
    verifyNoMoreInteractions(mockCampaignRepository);
  });
}
