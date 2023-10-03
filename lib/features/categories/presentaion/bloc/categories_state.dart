part of 'categories_bloc.dart';

@immutable
abstract class CategoriesState {}

abstract class CategoriesActionState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoadingState extends CategoriesState {}

class CategoriesSuccessState extends CategoriesState {
  // Map<String, dynamic> data;
  CategoriesSuccessState();
}

class CategoriesErrorState extends CategoriesState {}

class CategoriesNavigateState extends CategoriesState {}
