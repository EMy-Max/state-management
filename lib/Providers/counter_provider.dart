import 'package:flutter/material.dart';

class Counter with ChangeNotifier {

  int _counter = 0;

  int get counter => _counter;

  void _incrementCounter() {
      _counter++;
      notifyListeners();
  }
   void increment() => _incrementCounter();

  void _decreaseCounter() {
    if (_counter > 0) {
        _counter--;
        notifyListeners();
    }else {
        _counter = 0;
        notifyListeners();
    }
  }
  void decrement() => _decreaseCounter();

  void _resetCounter() {
      _counter = 0;
      notifyListeners();
  }
  void reset() => _resetCounter();

}