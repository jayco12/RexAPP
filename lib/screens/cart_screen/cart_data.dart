// import 'dart:collection';
// import 'package:flutter/material.dart';
// import 'cart.dart';

// class CartData extends ChangeNotifier{

//   final List<Cart> _carts = [];

//   UnmodifiableListView<Cart> get carts {
//     return UnmodifiableListView(_carts);
//   }

//   int get cartCount {
//     return _carts.length;
//   }

//   void addCart(String newCart) {
//     final cart = Cart(name: newCart);
//     _carts.add(cart);
//     notifyListeners();
//   }

//   void updateCart (Cart cart) {
//     cart.toggler();
//     notifyListeners();
//   }

//   void deleteCart (Cart cart) {
//     _carts.remove(cart);
//     notifyListeners();
//   }
// }