import 'package:flutter/material.dart';
import 'package:rex/components/screens builder/gaz_order.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/screens/gaz_form.dart';
import 'package:rex/components/header&footer/top_bar.dart';
import 'package:rex/components/utilities/floating_button.dart';
import 'package:rex/screens/salon_page.dart';

class GazPage extends StatelessWidget {
  static const String id = 'gaz_page';

  const GazPage({Key? key}) : super(key: key);

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
          FloatingButton(button: Image.asset('images/Salon.png'), onTap: () {
            Navigator.pushReplacementNamed(context, SalonPage.id);
          },),
          const ChoiceText(),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/SogaGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/SogaGaz.png'),
                              ),
                            );
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/NiyyaGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/NiyyaGaz.png'),
                              ),
                            );
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/OribaGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/OribaGaz.png'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/NigerGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/NigerGaz.png'),
                              ),
                            );
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/DangaraGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/DangaraGaz.png'),
                              ),
                            );
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/SonihyGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/SonihyGaz.png'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/AHKGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/AHKGaz.png'),
                              ),
                            );
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/GaniGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/GaniGaz.png'),
                              ),
                            );
                          },
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/TenereGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/TenereGaz.png'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/ZamaniGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/ZamaniGaz.png'),
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 36.0,
                        ),
                        GazOrder(
                          cylinders: Image.asset('images/LesAutres.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GazForm(image: 'images/LesAutres.png'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    // const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar:  BaseButton(),
    );
  }
}
