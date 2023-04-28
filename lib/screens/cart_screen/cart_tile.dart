import 'package:flutter/material.dart';
import 'package:rex/components/utilities/constants.dart';

class CartTile extends StatefulWidget {
  const CartTile({Key? key}) : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Material(
              elevation: 2.0,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 75,
                width: 59,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/cartimages/SOGA 1.png',
                      height: 59.0,
                    ),
                    const Text(
                      'Soga Gaz',
                      style: kCart3,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Soga Gaz',
                          style: kCart1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Taille',
                          style: kCart2,
                        ),
                        SizedBox(
                          width: 143.0,
                        ),
                        Text(
                          '12KG',
                          style: kCart2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Quantite',
                          style: kCart2,
                        ),
                        SizedBox(
                          width: 127.0,
                        ),
                        Text(
                          '3',
                          style: kCart2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Prix',
                          style: kCart2,
                        ),
                        SizedBox(
                          width: 149.0,
                        ),
                        Text(
                          '15,000 cfa',
                          style: kCart2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.grey[400],
          height: 40.0,
          indent: 2.0,
          endIndent: 2.0,
        ),
      ],
    );
  }
}
