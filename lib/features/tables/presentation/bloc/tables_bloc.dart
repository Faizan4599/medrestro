import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:medresto/common/menu_service.dart';
import 'package:meta/meta.dart';

part 'tables_event.dart';
part 'tables_state.dart';

class TablesBloc extends Bloc<TablesEvent, TablesState> {
  final MenuService menuService = MenuService();
  TablesBloc() : super(TablesInitial()) {
    on<TablesClickedEvent>(tablesClickedEvent);
  }

  FutureOr<void> tablesClickedEvent(
      TablesClickedEvent event, Emitter<TablesState> emit) async {
    emit(TablesLoadingState());
    try {
      final menuData = await menuService.loadMenuData();
      // print(">>>>>${menuData.map((key, value) => value)}");
      menuData.forEach((key, value) {
        print("Key: $key, Value: $value");
      });
      emit(TablesSuccessState(menuData: menuData));
    } catch (e) {
      emit(TablesErrorState(msg: "No data found"));
    }
  }
}
