part of 'tables_bloc.dart';

@immutable
abstract class TablesState {}

class TablesActionState extends TablesState {}

class TablesInitial extends TablesState {}

class TablesLoadingState extends TablesState {}

class TablesSuccessState extends TablesState {
  Map<String, dynamic> menuData;
  TablesSuccessState({required this.menuData});
}

class TablesErrorState extends TablesState {
  String msg;
  TablesErrorState({required this.msg});
}

class TablesNavigateToCategoryState extends TablesState {}
