import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'menus_event.dart';
part 'menus_state.dart';

class MenusBloc extends Bloc<MenusEvent, MenusState> {
  MenusBloc() : super(MenusInitial()) {
    on<MenusEvent>(menusEvent);
  }

  FutureOr<void> menusEvent(MenusEvent event, Emitter<MenusState> emit) {}
}
