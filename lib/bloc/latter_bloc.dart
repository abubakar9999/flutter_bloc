import 'package:area_and_order/sorce.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'latter_event.dart';
part 'latter_state.dart';

class LatterBloc extends Bloc<LatterEvent, LatterState> {
  LatterBloc() : super(LatterInitial()) {
    
    on<LatterEvent>((event, emit) {
        emit(LoaddingStatae());

        Future.delayed(const Duration(seconds: 3));
        emit(LoadedgStatae(latter: apiData().keys.toList(),sublatter: []));

     
    });
    on<SublatterEvent>((event, emit) {
      emit(LoadedgStatae(latter:apiData().keys.toList(),sublatter: apiData()[event.key],index: event.index));

    });
   
  }
}
