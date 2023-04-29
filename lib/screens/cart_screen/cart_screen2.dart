import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rex/screens/cart_screen/cart_tile.dart';

import '../../components/utilities/constants.dart';
import '../../components/utilities/submit.dart';
import '../gaz_form.dart';
import 'cart_data.dart';
import 'cart_list.dart';

class CartScreen2 extends StatefulWidget {
  const CartScreen2({super.key});

  @override
  State<CartScreen2> createState() => _CartScreen2State();
}

class _CartScreen2State extends State<CartScreen2> {
  var item = datalist;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'PANIER',
                style: kLeadText,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    datalist.remove(item);
                  });
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          const Text(
            '2 élément', //${Provider.of<CartData>(context).cartCount}
            style: kCart1,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: datalist.length,
                itemBuilder: (context, index) {
                  var item = datalist[index];
                  if (datalist.isNotEmpty) {
                    return Card(
                      elevation: 6.0,
                      child: Row(children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Card(
                            child: Image.asset(
                              item.image,
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Column(children: [
                          Text('\n\nTalle:${item.size}'),
                          Text('\n\nquantity:${item.quantity}'),
                        ]),
                        GestureDetector(
                            child: const Icon(
                              Icons.remove_circle,
                              color: Colors.red,
                            ),
                            onTap: () {
                              setState(() {
                                datalist.remove(item);
                              });
                            }),
                      ]),
                    );
                  } else {
                    return CartTile();
                  }
                }),
          ),
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
                width: 150.0,
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
              margin: EdgeInsets.only(left: 205.0, right: 10.0),
              text: 'COMMANDE'),
          const SizedBox(
            height: 50.0,
          )
        ]));
  }
}
