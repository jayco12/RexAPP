import 'package:flutter/material.dart';
import 'package:rex/components/base_button.dart';
import 'package:rex/components/salon_order.dart';
import 'package:rex/components/top_bar.dart';
import 'package:rex/components/floating_button.dart';
import 'package:rex/components/choice_text.dart';

class SalonPage extends StatelessWidget {
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
            Navigator.pushReplacementNamed(context, '/e');
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
                          onTap: () {
                            Navigator.pushNamed(context, '/h');
                          },
                        ),
                        const SizedBox(width: 34,),
                        SalonOrder(
                          services: Image.asset('images/Pedicure.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/h');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 34,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SalonOrder(
                          services: Image.asset('images/Manicure.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/h');
                          },
                        ),
                        const SizedBox(width: 34,),
                        SalonOrder(
                          services: Image.asset('images/Tress.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/h');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 34,),
                    SalonOrder(
                      services: Image.asset('images/Gommagge.png'),
                      onTap: () {
                        Navigator.pushNamed(context, '/h');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BaseButton(),
    );
  }
}
