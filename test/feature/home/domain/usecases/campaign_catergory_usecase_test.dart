import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/campaign_catergory_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'campaign_catergory_usecase_test.mocks.dart';

@GenerateMocks([CampaignRepository])
void main() {
  late CampaignCategoryUseCase usecase;
  late MockCampaignRepository mockCampaignRepository;
  late CampaignCategories tResponse;

  setUp(() {
    mockCampaignRepository = MockCampaignRepository();
    usecase = CampaignCategoryUseCase(mockCampaignRepository);
    tResponse = CampaignCategories(
      data: [
        Datum(
          id: "1",
          name: "test",
          description: "test",
          image: "test",
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
    when(mockCampaignRepository.getCategories())
        .thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Right(tResponse));
    verify(mockCampaignRepository.getCategories());
    verifyNoMoreInteractions(mockCampaignRepository);
  });

  test('should not get the user info when create account fails', () async {
    // getCategories
    when(mockCampaignRepository.getCategories())
        .thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Left(failure));
    verify(mockCampaignRepository.getCategories());
    verifyNoMoreInteractions(mockCampaignRepository);
  });
}
