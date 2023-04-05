import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/screens template/salon_order.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/components/header_footer/top_bar.dart';
import 'package:rex/components/utilities/floating_button.dart';

class SalonPage extends StatelessWidget {

  const SalonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: TopBar(
          phonenavigator: InkResponse(
            onTap: () {
              context.router.pushNamed('/our-contact');
            },
            child: const Icon(Icons.phone),
          ),
          infonavigator: InkResponse(
            onTap: () {
              //widget.infonavigator;
            },
            child: const Icon(Icons.info_outline_rounded),
          ),
          aboutnavigator: InkResponse(
              onTap: () {
                context.router.pushNamed('/about-us');

              },
              child: const Icon(Icons.group_rounded)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingButton(
            button: Image.asset('images/Gaz.png'),
            onTap: () {
              context.router.replaceNamed('/gaz-page');
            },
          ),
          const ChoiceText(),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SalonOrder(
                          services: Image.asset('images/Salon.png'),
                        ),
                        const SizedBox(
                          width: 34,
                        ),
                        SalonOrder(
                          services: Image.asset('images/Pedicure.png'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SalonOrder(
                          services: Image.asset('images/Manicure.png'),
                        ),
                        const SizedBox(
                          width: 34,
                        ),
                        SalonOrder(
                          services: Image.asset('images/Tress.png'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    SalonOrder(
                      services: Image.asset('images/Gommagge.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const BaseButton(),
    );
  }
}
