import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners(); // Notify listeners of the change in state
  }

  void decrementCounter() {
    _counter--;
    notifyListeners(); // Notify listeners of the change in state
  }
}
