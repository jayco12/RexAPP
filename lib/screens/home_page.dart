import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mj_image_slider/mj_image_slider.dart';
import 'package:mj_image_slider/mj_options.dart';
import 'package:rex/components/screens template/businesses.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/screens/gaz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/Slide1.png",
    "images/Slide2.jpg",
    "images/All Gaz1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MJImageSlider(
          widgets: [
            ...images.map((e) => Image(image: AssetImage(e))).toList(),
          ],
          options: MjOptions(
            height: 188.0,
            width: 250,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(seconds: 5),
            autoPlayCurve: Curves.easeOut,
            onPageChanged: (_) {},
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        const ChoiceText(),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Businesses(
              image: Image.asset('images/Gaz.png'),
              service: 'GAZ',
              onTap: () {
                context.router.pushNamed('/gaz-page');
              },
            ),
            const SizedBox(width: 30.0),
            Businesses(
              image: Image.asset('images/Salon.png'),
              service: 'SALON',
              onTap: () {
                context.router.pushNamed('/salon-page');
              },
            ),
          ],
        ),
      ],
    );
  }
}
