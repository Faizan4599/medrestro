import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:medresto/common/menu_service.dart';
import 'package:meta/meta.dart';
part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final MenuService menuService = MenuService();
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesClickedEvent>(categoriesClickedEvent);
  }

  FutureOr<void> categoriesClickedEvent(
      CategoriesClickedEvent event, Emitter<CategoriesState> emit) {}
  Future<void> _handleCategoriesClicked(
      CategoriesClickedEvent event, Emitter<CategoriesState> emit) async {
    emit(CategoriesLoadingState());
    try {
      final menuData = await menuService.loadMenuData();
      // Parse the menuData and emit the appropriate state here
      // Example: final menuResponse = MenuResponse.fromJson(menuData);
      emit(CategoriesSuccessState());
    } catch (e) {
      emit(CategoriesErrorState());
    }
  }
}
