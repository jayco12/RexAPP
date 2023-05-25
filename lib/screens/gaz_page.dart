import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rex/components/header_footer/base_button.dart';
import 'package:rex/components/screens template/gaz_order.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/screens/gaz_form.dart';
import 'package:rex/components/header_footer/top_bar.dart';
import 'package:rex/components/utilities/floating_button.dart';
import 'package:rex/screens/les_autres_articles.dart/Artcles.dart';
import 'package:rex/screens/les_autres_articles.dart/les_autres.dart';

import '../components/utilities/back_arrow.dart';

class GazPage extends StatelessWidget {
  static const routeName = '/gaz.page';
  final bool addAppbar;
  const GazPage({
    Key? key,
    required this.addAppbar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: addAppbar
            ? buildAppBar(context)
            : buildAppBar(context, emptyAppBar: true),
        body: SafeArea(
          child: Navigator(onGenerateRoute: (RouteSettings settings) {
            return MaterialPageRoute(builder: (
              BuildContext context,
            ) {
              child:
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingButton(
                    button: Image.asset('images/Salon.png'),
                    onTap: () {
                      context.router.replaceNamed('/salon-page');
                    },
                  ),
                  const BackArrow(),
                  const ChoiceText(),
                  Expanded(
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GazOrder(
                                  cylinders: Image.asset('images/SogaGaz.png'),
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          GazForm(image: 'images/SogaGaz.png'),
                                    ));
                                  },
                                ),
                                GazOrder(
                                  cylinders: Image.asset('images/NiyyaGaz.png'),
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          GazForm(image: 'images/NiyyaGaz.png'),
                                    ));
                                  },
                                ),
                                GazOrder(
                                  cylinders: Image.asset('images/OribaGaz.png'),
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          GazForm(image: 'images/OribaGaz.png'),
                                    ));
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
                                          builder: (context) => GazForm(
                                              image: 'images/NigerGaz.png'),
                                        ));
                                  },
                                ),
                                GazOrder(
                                  cylinders:
                                      Image.asset('images/DangaraGaz.png'),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => GazForm(
                                              image: 'images/DangaraGaz.png'),
                                        ));
                                  },
                                ),
                                GazOrder(
                                  cylinders:
                                      Image.asset('images/SonihyGaz.png'),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => GazForm(
                                              image: 'images/SonihyGaz.png'),
                                        ));
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
                                          builder: (context) => GazForm(
                                              image: 'images/AHKGaz.png'),
                                        ));
                                  },
                                ),
                                GazOrder(
                                  cylinders: Image.asset('images/GaniGaz.png'),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => GazForm(
                                              image: 'images/GaniGaz.png'),
                                        ));
                                  },
                                ),
                                GazOrder(
                                  cylinders:
                                      Image.asset('images/TenereGaz.png'),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => GazForm(
                                              image: 'images/TenereGaz.png'),
                                        ));
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
                                  cylinders:
                                      Image.asset('images/ZamaniGaz.png'),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => GazForm(
                                                image:
                                                    'images/ZamaniGaz.png')));
                                  },
                                ),
                                const SizedBox(
                                  width: 36.0,
                                ),
                                GazOrder(
                                  cylinders:
                                      Image.asset('images/LesAutres.png'),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LesAutres(
                                                  addAppbar: false,
                                                )));
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

                //bottomNavigationBar: BaseButton(),
              );
            });
          }),
        ));
  }
}
