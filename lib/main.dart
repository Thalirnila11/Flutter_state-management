import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:Counter_app/pages/counter/CounterWidget.dart";
import "Myapp.dart";
void main() {
  runApp( ProviderScope(
    child:MaterialApp(
      home:CounterWidget(),
    ),
  ),
  );
}

