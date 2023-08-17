part of 'categories_bloc_bloc.dart';

@freezed
class CategoriesBlocState with _$CategoriesBlocState {
  const factory CategoriesBlocState.initial() = _Initial;
  
  const factory CategoriesBlocState.loading() = LoadingState;

  const factory CategoriesBlocState.error(String error) = ErrorState;

  const factory CategoriesBlocState.loaded(CampaignCategories categories) = LoadedState;

}









