import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  List <String> _shoppingCart = ['Apple', 'orange', 'Grapes', 'Pawpaw'];

  int get count => _shoppingCart.length;
  List<String> get cart => _shoppingCart;


  void addItem(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }
}