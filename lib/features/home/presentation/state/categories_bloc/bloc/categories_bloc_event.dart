part of 'categories_bloc_bloc.dart';

  
abstract class CategoriesBlocEvent extends Equatable {
  const CategoriesBlocEvent();
  @override
  List<Object?> get props => [];
}

class FetchCategories extends CategoriesBlocEvent {}