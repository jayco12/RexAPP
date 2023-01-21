import 'package:flutter/material.dart';
import 'package:rex/components/header&footer/top_bar.dart';

class CartPage extends StatelessWidget {
  static const String id = 'cart_page';
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 120),
          child: TopBar(),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text('PANIER'),
                RawMaterialButton(
                  child: Icon(Icons.radio),
                    onPressed: () {},),
              ],
            ),
            Text('2 élément'),
            Image.asset('images/SogaGaz.png'),
          ],
        ));
  }
}
