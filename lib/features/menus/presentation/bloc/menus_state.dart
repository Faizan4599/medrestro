part of 'menus_bloc.dart';

@immutable
abstract class MenusState {}

abstract class MenusActionState extends MenusState {}

class MenusInitial extends MenusState {}

class MenusLoadingState extends MenusState {}

class MenuSuccessState extends MenusState {}

class MenuErrorState extends MenusState {}

class MenuNavigateState extends MenusActionState {}
