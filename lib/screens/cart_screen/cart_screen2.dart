import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rex/screens/cart_screen/cart_tile.dart';

import '../../components/utilities/constants.dart';
import '../../components/utilities/submit.dart';
import 'cart_data.dart';
import 'cart_list.dart';

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
            '2 élément', //${Provider.of<CartData>(context).cartCount}
            style: kCart1,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView(
              children: [
                const CartTile(),
                const CartTile(),
                const CartTile(),
                const CartTile(),
                // Container(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: 20.0,
                //   ),
                //   width: double.infinity,
                //   decoration: const BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(20.0),
                //       topRight: Radius.circular(20.0),
                //     ),
                //   ),
                //   child: const CartList(),
                // ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const [
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
                const SizedBox(
                  height: 42.5,
                ),
                const Submit(
                    margin: EdgeInsets.only(left: 235.0, right: 10.0),
                    text: 'COMMANDE'),
                const SizedBox(
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
