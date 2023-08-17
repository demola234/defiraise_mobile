import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_campaign_by_category_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_by_campaign_bloc.freezed.dart';
part 'campaign_by_campaign_event.dart';
part 'campaign_by_campaign_state.dart';

class CampaignByCampaignBloc
    extends Bloc<CampaignByCampaignEvent, CampaignByCampaignState> {
  final GetCampaignByCategoryUseCase getCampaignByCategoryUseCase;
  CampaignByCampaignBloc({required this.getCampaignByCategoryUseCase})
      : super(_Initial()) {
    on<FetchCampaignByCategoryEvent>(_fetchCampaignByCategory);
  }

  Future<void> _fetchCampaignByCategory(FetchCampaignByCategoryEvent event,
      Emitter<CampaignByCampaignState> emit) async {
    emit(const CampaignByCampaignState.loading());
    final failureOrSuccess = await getCampaignByCategoryUseCase
        .call(CampaignByCategoryParams(id: event.id!));
    failureOrSuccess.fold((failure) {
      emit(CampaignByCampaignState.error(failure.errorMessage));
    }, (success) {
      emit(CampaignByCampaignState.loaded(success));
    });
  }
}
