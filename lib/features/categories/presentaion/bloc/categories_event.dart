part of 'categories_bloc.dart';

@immutable
abstract class CategoriesEvent {}

class CategoriesClickedEvent extends CategoriesEvent {}

class CategoriesSearchEvent extends CategoriesEvent {
  final String query;

  CategoriesSearchEvent({required this.query});
}
