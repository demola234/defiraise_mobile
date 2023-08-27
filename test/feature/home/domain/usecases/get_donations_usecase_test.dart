import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_donations_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'campaign_catergory_usecase_test.mocks.dart';

@GenerateMocks([CampaignRepository])
void main() {
  late GetDonationsUseCase usecase;
  late MockCampaignRepository mockCampaignRepository;
  late CampaignResponse tResponse;

  setUp(() {
    mockCampaignRepository = MockCampaignRepository();
    usecase = GetDonationsUseCase(mockCampaignRepository);
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

  final tFailedResponse = CreateAccountResponse(
    message: "error message",
    status: 400,
  );

  final failure = ApiError(
      errorCode: tFailedResponse.status.toString(),
      errorMessage: tFailedResponse.message);

  test("should get the user info after you create account", () async {
    // arrange
    when(mockCampaignRepository.getDonations())
        .thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Right(tResponse));
    verify(mockCampaignRepository.getDonations());
    verifyNoMoreInteractions(mockCampaignRepository);
  });

  test('should not get the user info when create account fails', () async {
    // getDonations
    when(mockCampaignRepository.getDonations())
        .thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Left(failure));
    verify(mockCampaignRepository.getDonations());
    verifyNoMoreInteractions(mockCampaignRepository);
  });
}
