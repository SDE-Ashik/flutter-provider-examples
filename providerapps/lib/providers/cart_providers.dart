import 'package:flutter/material.dart';
import 'package:providerapps/const/const.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _items = [];
  List<Product> get items => _items;

  void addProduct(Product item) {
    _items.add(item);
    notifyListeners();
  }

  void removeProduct(Product item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  double cartTotal() {
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }
}
