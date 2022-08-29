import 'package:flutter/material.dart';
import 'package:rex/gaz_order.dart';

class GazPage extends StatelessWidget {
  const GazPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Soya Gaz',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Niyya Gaz',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Oriba Gaz',
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Nigor Gaz',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Dangara Gaz',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Sonihy Gaz',
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'AHK Gaz',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Gani Gaz',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Tenere Gaz',
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: GazOrder(
                icon: Icons.local_gas_station,
                name: 'Zamani Gaz',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: GazOrder(
                name: 'Les Autres',
                icon: Icons.arrow_forward_sharp,
                onPressed: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}

