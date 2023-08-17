import 'package:bloc/bloc.dart';
import 'package:defiraiser_mobile/core/usecases/usecases.dart';
import 'package:defiraiser_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defiraiser_mobile/features/home/domain/usecases/campaign_catergory_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_bloc_event.dart';
part 'categories_bloc_state.dart';
part 'categories_bloc_bloc.freezed.dart';

class CategoriesBlocBloc extends Bloc<CategoriesBlocEvent, CategoriesBlocState> {
  final CampaignCategoryUseCase campaignCategoryUseCase;
  CategoriesBlocBloc({required this.campaignCategoryUseCase}) : super(_Initial()) {
     on<FetchCategories>(_fetchCategories);
  }

  Future<void> _fetchCategories(
      FetchCategories event, Emitter<CategoriesBlocState> emit) async {
    emit(const CategoriesBlocState.loading());
    final failureOrSuccess = await campaignCategoryUseCase
        .call(NoParams());
    failureOrSuccess.fold((failure) {
      emit(CategoriesBlocState.error(failure.errorMessage));
    }, (success) {
      emit(CategoriesBlocState.loaded(success));
    });
  }
}
