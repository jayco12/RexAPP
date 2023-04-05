import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rex/screens/cart_screen/cart_data.dart';
import 'package:rex/screens/cart_screen/cart_tile.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartData>(
      builder: (context, cartdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final cart = cartdata.carts[index];
            return const CartTile();
          },
          itemCount: cartdata.cartCount,
        );
      },
    );
  }
}
