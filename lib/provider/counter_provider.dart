import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter(BuildContext context) {
    _counter++;
    if (_counter % 3 == 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(milliseconds: 500),
          content: Text('Modulus hit: $_counter')));
    }
    notifyListeners(); // Notify listeners of the change in state
  }

  void decrementCounter() {
    _counter--;
    notifyListeners(); // Notify listeners of the change in state
  }
}
