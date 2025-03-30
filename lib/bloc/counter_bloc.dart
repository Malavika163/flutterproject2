import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<increment>((event, emit) {
      final currentstatevalue = state.count;
      return emit(CounterState(count: currentstatevalue + 1));
    });
    on<decrement>((event, emit) {
      final currentstatevalue = state.count;
      return emit(CounterState(count: currentstatevalue - 1));
    });
  }
}