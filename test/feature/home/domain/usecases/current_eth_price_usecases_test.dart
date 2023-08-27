import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/core/network/api_error.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/register_entity/create_account_response.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/current_eth_price_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'campaign_catergory_usecase_test.mocks.dart';

@GenerateMocks([CampaignRepository])
void main() {
  late CurrentEthPriceUsecase usecase;
  late MockCampaignRepository mockCampaignRepository;
  late BaseEntity tResponse;

  setUp(() {
    mockCampaignRepository = MockCampaignRepository();
    usecase = CurrentEthPriceUsecase(mockCampaignRepository);
    tResponse = BaseEntity(
      data: "2000",
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
    when(mockCampaignRepository.getCurrentEthPrice())
        .thenAnswer((_) async => Right(tResponse));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Right(tResponse));
    verify(mockCampaignRepository.getCurrentEthPrice());
    verifyNoMoreInteractions(mockCampaignRepository);
  });

  test('should not get the user info when create account fails', () async {
    // getCurrentEthPrice
    when(mockCampaignRepository.getCurrentEthPrice())
        .thenAnswer((_) async => Left(failure));

    // act
    final result = await usecase.call(NoParams());

    // assert
    expect(result, Left(failure));
    verify(mockCampaignRepository.getCurrentEthPrice());
    verifyNoMoreInteractions(mockCampaignRepository);
  });
}
