import 'package:Counter_app/Application/counter/CounterState.dart';
import 'package:Counter_app/Core/counter/CounterEvents.dart';
import 'package:Counter_app/Core/counter/CounterStateValue.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterState, CounterStateValue>(
      (ref) => CounterState(),
);

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterProvider);
    final counterEvents = ref.watch(counterProvider.notifier);


    return Scaffold(
      floatingActionButton:Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              counterEvents.mapsEventsToState(CounterEvents.onPressed());
            },
            child: Icon(Icons.add), // Add an icon to the button
          ),
          FloatingActionButton(
            onPressed: () {
              counterEvents.mapsEventsToState(CounterEvents.dec());
            },
            child: Icon(Icons.remove), // Add an icon to the button
          ),
        ],
      ),




      body: Center(
        child: Text(
          counterState.counter.toString(),
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}