import 'package:Counter_app/Core/counter/CounterEvents.dart';
import 'package:Counter_app/Core/counter/CounterStateValue.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterState extends StateNotifier<CounterStateValue> {
  CounterState() : super(CounterStateValue.initial());

  void mapsEventsToState(CounterEvents events) {
    events.map(
      onPressed: (value) {
        state = state.copyWith(
            counter: state.counter + 1
        );
      },
      dec: (value) {
        state = state.copyWith(
            counter: state.counter - 1
        );
      },

    );
  }
}





