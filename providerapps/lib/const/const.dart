import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final Color color;
  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.color});

  
}
final List<Product> products = [
  Product(id: 1, name: "Mobile", price: 345, color: colors[0]),
  Product(id: 2, name: "Laptop", price: 678, color: colors[1]),
  Product(id: 3, name: "Tv", price: 1001, color: colors[2]),
  Product(id: 4, name: "mouse", price: 60, color: colors[3]),
  Product(id: 1, name: "headphone", price: 210, color: colors[4]),
  Product(id: 1, name: "keyboard", price: 101, color: colors[5]),
];

List<Color> colors = [
  Colors.green,
  Colors.red,
  Colors.pink,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.blue,
  Colors.brown,
  Colors.cyan
];
