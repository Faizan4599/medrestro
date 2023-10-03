import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'land_screen_event.dart';
part 'land_screen_state.dart';

class LandScreenBloc extends Bloc<LandScreenEvent, LandScreenState> {
  LandScreenBloc() : super(LandScreenInitial()) {}
}
