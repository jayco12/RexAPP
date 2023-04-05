import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/header_footer/base_button.dart';
import 'package:rex/components/screens template/gaz_order.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/screens/gaz_form.dart';
import 'package:rex/components/header_footer/top_bar.dart';
import 'package:rex/components/utilities/floating_button.dart';

class GazPage extends StatelessWidget {

  const GazPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: TopBar(
          phonenavigator:InkResponse(
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
            button: Image.asset('images/Salon.png'),
            onTap: () {
              context.router.replaceNamed('/salon-page');
            },
          ),
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
                    const SizedBox(
                      height: 15.0,
                    ),
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
                                builder: (context) => const GazForm(
                                    image: 'images/DangaraGaz.png'),
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
                                builder: (context) => const GazForm(
                                    image: 'images/SonihyGaz.png'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
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
                                builder: (context) => const GazForm(
                                    image: 'images/TenereGaz.png'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GazOrder(
                          cylinders: Image.asset('images/ZamaniGaz.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GazForm(
                                    image: 'images/ZamaniGaz.png'),
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
                                builder: (context) => const GazForm(
                                    image: 'images/LesAutres.png'),
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
      //bottomNavigationBar: BaseButton(),
    );
  }
}
