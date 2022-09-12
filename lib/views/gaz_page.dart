import 'package:flutter/material.dart';
import 'package:rex/components/base_button.dart';
import 'package:rex/components/gaz_order.dart';
import 'package:rex/components/top_bar.dart';
import 'package:rex/components/choice_text.dart';
import 'package:rex/components/floating_button.dart';

class GazPage extends StatelessWidget {
  const GazPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TopBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingButton(button: Image.asset('images/Salon.png'), onTap: () {
                      Navigator.pushReplacementNamed(context, '/g');
                    },),
                    const ChoiceText(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/SogaGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/NiyyaGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/OribaGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/NigerGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/DangaraGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/SonihyGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/AHKGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/GaniGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/TenereGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/ZamaniGaz.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                        const SizedBox(
                          width: 36.0,
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/LesAutres.png'),
                          onTap: () {
                            Navigator.pushNamed(context, '/f');
                          },
                        ),
                      ],
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
