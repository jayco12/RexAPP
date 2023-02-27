import 'package:flutter/material.dart';
import 'package:rex/screens/cart/cart_tile.dart';

import '../../components/utilities/constants.dart';
import '../../components/utilities/submit.dart';

class CartScreen2 extends StatefulWidget {
  const CartScreen2({Key? key}) : super(key: key);

  @override
  State<CartScreen2> createState() => _CartScreen2State();
}

class _CartScreen2State extends State<CartScreen2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'PANIER',
                style: kLeadText,
              ),
              Icon(Icons.delete),
            ],
          ),
          Text(
            '2 élément',
            style: kCart1,
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView(
              children: [
                CartTile(),
                CartTile(),
                CartTile(),
                CartTile(),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      'TOTAL',
                      style: kCart4,
                    ),
                    SizedBox(
                      width: 217.0,
                    ),
                    Text(
                      '15,000 CFA',
                      style: kCart4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 42.5,
                ),
                Submit(
                    margin: EdgeInsets.only(left: 235.0, right: 10.0),
                    text: 'COMMANDE'),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
