import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/get_campaigns.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaigns_event.dart';
part 'campaigns_state.dart';
part 'campaigns_bloc.freezed.dart';


class CampaignsBloc extends Bloc<CampaignsEvent, CampaignsState> {
  final GetCampaignsUseCase getCampaignUsecase;
  CampaignsBloc({required this.getCampaignUsecase}) : super(_Initial()) {
     on<FetchCampaigns>(_fetchCategories);
  }

  Future<void> _fetchCategories(
      FetchCampaigns event, Emitter<CampaignsState> emit) async {
    emit(const CampaignsState.loading());
    final failureOrSuccess = await getCampaignUsecase
        .call(NoParams());
    failureOrSuccess.fold((failure) {
      emit(CampaignsState.error(failure.errorMessage));
    }, (success) {
      emit(CampaignsState.loaded(success));
    });
  }
}
