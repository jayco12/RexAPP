import 'package:flutter/material.dart';
import 'package:rex/components/screens builder/salon_order.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/components/header&footer/top_bar.dart';
import 'package:rex/components/utilities/floating_button.dart';
import 'package:rex/screens/gaz_page.dart';

class SalonPage extends StatelessWidget {
  static const String id = 'salon_page';

  const SalonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TopBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingButton(button: Image.asset('images/Gaz.png'), onTap: () {
            Navigator.pushReplacementNamed(context, GazPage.id);
          },),
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
                        const SizedBox(width: 34,),
                        SalonOrder(
                          services: Image.asset('images/Pedicure.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 34,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SalonOrder(
                          services: Image.asset('images/Manicure.png'),
                        ),
                        const SizedBox(width: 34,),
                        SalonOrder(
                          services: Image.asset('images/Tress.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 34,),
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
