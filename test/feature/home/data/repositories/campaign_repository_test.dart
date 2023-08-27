import 'package:dartz/dartz.dart';
import 'package:defiraiser_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defiraiser_mobile/features/home/data/data_source/campaign_remote_date_source.dart';
import 'package:defiraiser_mobile/features/home/data/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart'
    as campaign_categories;
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/donors_entity/donors_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCampaignRemoteDataSource extends Mock
    implements CampaignRemoteDataSource {}

void main() {
  late MockCampaignRemoteDataSource mockRemoteDataSource;
  late ICampaignRepository campaignRepositoryImpl;
  late BaseEntity tBaseResponse;
  late DonorsEntity tDonorsResponse;
  late CampaignResponse tCampaignResponse;
  late campaign_categories.CampaignCategories tCampaignCategoriesResponse;

  setUpAll(() {
    mockRemoteDataSource = MockCampaignRemoteDataSource();
    campaignRepositoryImpl = ICampaignRepository(
      remoteDataSource: mockRemoteDataSource,
    );

    tBaseResponse = const BaseEntity(
      message: "success",
      data: "Passed",
      status: 200,
    );

    tDonorsResponse = const DonorsEntity(
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

    tCampaignCategoriesResponse = campaign_categories.CampaignCategories(
      data: [
        campaign_categories.Datum(
          id: "1",
          name: "test",
          description: "test",
          image: "test",
        )
      ],
      message: "success",
      status: 200,
    );

    tCampaignResponse = const CampaignResponse(
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

  group("should get campaigns", () {
    test('should get the user info after you create account', () async {
      // arrange
      when(() => mockRemoteDataSource.getCampaigns())
          .thenAnswer((_) async => tCampaignResponse);

      // act
      final result = await campaignRepositoryImpl.getCampaigns();

      // assert
      expect(result, Right(tCampaignResponse));
      verify(() => mockRemoteDataSource.getCampaigns());
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  // getCategories test
  group("should get categories", () {
    test('should get the user info after you create account', () async {
      // arrange
      when(() => mockRemoteDataSource.getCategories())
          .thenAnswer((_) async => tCampaignCategoriesResponse);

      // act
      final result = await campaignRepositoryImpl.getCategories();

      // assert
      expect(result, Right(tCampaignCategoriesResponse));
      verify(() => mockRemoteDataSource.getCategories());
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  // getMyCampaigns test
  group("should get my campaigns", () {
    test('should get the user info after you create account', () async {
      // arrange
      when(() => mockRemoteDataSource.getMyCampaigns())
          .thenAnswer((_) async => tCampaignResponse);

      // act
      final result = await campaignRepositoryImpl.getMyCampaigns();

      // assert
      expect(result, Right(tCampaignResponse));
      verify(() => mockRemoteDataSource.getMyCampaigns());
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  // getCampaignsByCategory test
  group("should get campaigns by category", () {
    test('should get the user info after you create account', () async {
      // arrange
      when(() => mockRemoteDataSource.getCampaignsByCategory(id: "1"))
          .thenAnswer((_) async => tCampaignResponse);

      // act
      final result =
          await campaignRepositoryImpl.getCampaignsByCategory(id: "1");

      // assert
      expect(result, Right(tCampaignResponse));
      verify(() => mockRemoteDataSource.getCampaignsByCategory(id: "1"));
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  // getCurrentEthPrice test
  group("should get current eth price", () {
    test('should get the user info after you create account', () async {
      // arrange
      when(() => mockRemoteDataSource.getCurrentEthPrice())
          .thenAnswer((_) async => tBaseResponse);

      // act
      final result = await campaignRepositoryImpl.getCurrentEthPrice();

      // assert
      expect(result, Right(tBaseResponse));
      verify(() => mockRemoteDataSource.getCurrentEthPrice());
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  // makeDonation test
  group("should make donation", () {
    test('should get the user info after you create account', () async {
      // arrange
      when(() => mockRemoteDataSource.makeDonation(
            campaignId: "1",
            amount: "1",
          )).thenAnswer((_) async => tBaseResponse);

      // act
      final result = await campaignRepositoryImpl.makeDonation(
        campaignId: "1",
        amount: "1",
      );

      // assert
      expect(result, Right(tBaseResponse));
      verify(() => mockRemoteDataSource.makeDonation(
            campaignId: "1",
            amount: "1",
          ));
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  // getDonors test
  group("should get donors", () {
    test('should get the user info after you create account', () async {
      // arrange
      when(() => mockRemoteDataSource.getDonors(campaignId: "1"))
          .thenAnswer((_) async => tDonorsResponse);

      // act
      final result = await campaignRepositoryImpl.getDonors(campaignId: "1");

      // assert
      expect(result, Right(tDonorsResponse));
      verify(() => mockRemoteDataSource.getDonors(campaignId: "1"));
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });

  // createDonation test
  // group("should create donation", () {
  //   test('should get the user info after you create account', () async {
  //     // arrange
  //     when(() => mockRemoteDataSource.createDonation(
  //           category: "test",
  //           deadline: "test",
  //           description: "test",
  //           images: File("test"),
  //           title: "test",
  //           amount: "1",
  //         )).thenAnswer((_) async => tBaseResponse);

  //     // act
  //     final result = await campaignRepositoryImpl.createDonation(
  //       category: "test",
  //       deadline: "test",
  //       description: "test",
  //       images: File("test"),
  //       title: "test",
  //       amount: "1",
  //     );

  //     // assert
  //     expect(result, Right(tBaseResponse));
  //     verify(() => mockRemoteDataSource.createDonation(
  //           category: "test",
  //           deadline: "test",
  //           description: "test",
  //           images: File("test"),
  //           title: "test",
  //           amount: "1",
  //         ));

  //     verifyNoMoreInteractions(mockRemoteDataSource);
  //   });
  // });
}
