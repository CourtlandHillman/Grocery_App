import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartModel extends ChangeNotifier {
  // list item's
  final List _shopItems = [
    //[itemName , itemPrice , itemPath , color]

    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "12.00", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.50", "lib/images/water.png", Colors.blue],
  ];

  List _cartItem = [];

  get shopItems => _shopItems;

  get cartItem => _cartItem;

  //add item to cart
  void addItemToCart(int index) {
    _cartItem.add(_shopItems[index]);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemFromCart(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }
  //calculate total price

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItem.length; i++) {
      totalPrice += double.parse(_cartItem[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
