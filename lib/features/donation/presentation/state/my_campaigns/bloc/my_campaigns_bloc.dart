import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_my_campaign.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_campaigns_bloc.freezed.dart';
part 'my_campaigns_event.dart';
part 'my_campaigns_state.dart';

class MyCampaignsBloc extends Bloc<CampaignsEvent, MyCampaignsState> {
  final GetMyCampaignsUseCase getMyCampaignUsecase;
  MyCampaignsBloc({required this.getMyCampaignUsecase}) : super(_Initial()) {
    on<FetchMyCampaigns>(_fetchMyCampaigns);
  }

  Future<void> _fetchMyCampaigns(
      FetchMyCampaigns event, Emitter<MyCampaignsState> emit) async {
    emit(const MyCampaignsState.loading());
    final failureOrSuccess = await getMyCampaignUsecase.call(NoParams());
    failureOrSuccess.fold((failure) {
      emit(MyCampaignsState.error(failure.errorMessage));
    }, (success) {
      emit(MyCampaignsState.loaded(success));
    });
  }
}
