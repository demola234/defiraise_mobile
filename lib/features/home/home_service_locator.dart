import 'dart:developer';

import 'package:defiraiser_mobile/features/donation/presentation/state/create_donation/bloc/create_donation_bloc.dart';
import 'package:defiraiser_mobile/features/donation/presentation/state/get_donation/bloc/get_donation_bloc.dart';
import 'package:defiraiser_mobile/features/donation/presentation/state/my_campaigns/bloc/my_campaigns_bloc.dart';
import 'package:defiraiser_mobile/features/home/data/data_source/campaign_remote_date_source.dart';
import 'package:defiraiser_mobile/features/home/data/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/repositories/campaign_repository.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/campaign_catergory_usecase.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/create_donation_usecase.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/current_eth_price_usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_campaign_by_category_usecase.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_campaigns.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_donations_usecase.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_donors_usecase.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_my_campaign.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/make_donation_usecase.dart';
import 'package:defiraiser_mobile/features/home/presentation/state/campaigns/bloc/campaigns_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/state/categories_bloc/bloc/categories_bloc_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/state/get_current_eth_price_bloc/bloc/current_eth_price_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/state/get_donors/bloc/get_donors_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/state/make_donation_bloc/bloc/make_donations_bloc.dart';
import 'package:get_it/get_it.dart';

import 'presentation/state/campaign_by_category/bloc/campaign_by_campaign_bloc.dart';

final homeLocator = GetIt.instance;

Future<void> registerHomeDependencies() async {
  log('interacting with smart contract ...');
  homeLocator.registerFactory(
    () => CategoriesBlocBloc(
      campaignCategoryUseCase: homeLocator(),
    ),
  );

  homeLocator.registerFactory(
    () => CampaignsBloc(
      getCampaignUsecase: homeLocator(),
    ),
  );

  homeLocator.registerFactory(
    () => MyCampaignsBloc(
      getMyCampaignUsecase: homeLocator(),
    ),
  );

  homeLocator.registerFactory(
    () => GetDonationBloc(
      getDonationsUseCase: homeLocator(),
    ),
  );

  homeLocator.registerFactory(
    () => CampaignByCampaignBloc(
      getCampaignByCategoryUseCase: homeLocator(),
    ),
  );

  homeLocator.registerFactory(
    () => CurrentEthPriceBloc(
      currentEthPriceUsecase: homeLocator(),
    ),
  );

  homeLocator.registerFactory(
    () => MakeDonationsBloc(
      makeDonationUsecase: homeLocator(),
    ),
  );

    homeLocator.registerFactory(
    () => GetDonorsBloc(
      getDonorsUsecase: homeLocator(),
    ),
  );

      homeLocator.registerFactory(
    () => CreateDonationBloc(
      createDonationUsecase: homeLocator(),
    ),
  );

  

  //Repository
  homeLocator.registerLazySingleton<CampaignRepository>(
    () => ICampaignRepository(
      remoteDataSource: homeLocator(),
    ),
  );

  //UseCase
  homeLocator.registerLazySingleton<CampaignCategoryUseCase>(
    () => CampaignCategoryUseCase(homeLocator()),
  );

  homeLocator.registerLazySingleton<GetCampaignsUseCase>(
    () => GetCampaignsUseCase(homeLocator()),
  );

  homeLocator.registerLazySingleton<GetMyCampaignsUseCase>(
    () => GetMyCampaignsUseCase(homeLocator()),
  );

  homeLocator.registerLazySingleton<GetDonationsUseCase>(
    () => GetDonationsUseCase(homeLocator()),
  );

  homeLocator.registerLazySingleton<GetCampaignByCategoryUseCase>(
    () => GetCampaignByCategoryUseCase(homeLocator()),
  );

  homeLocator.registerLazySingleton<CurrentEthPriceUsecase>(
    () => CurrentEthPriceUsecase(homeLocator()),
  );

  homeLocator.registerLazySingleton<MakeDonationUsecase>(
    () => MakeDonationUsecase(homeLocator()),
  );

    homeLocator.registerLazySingleton<GetDonorsUsecase>(
    () => GetDonorsUsecase(homeLocator()),
  );
      homeLocator.registerLazySingleton<CreateDonationUsecase>(
    () => CreateDonationUsecase(homeLocator()),
  );

  

  // DataSources
  homeLocator.registerLazySingleton<CampaignRemoteDataSource>(
    () => CampaignRemoteDataSourceImpl(
      homeLocator(),
    ),
  );
}
