import 'package:flutter/material.dart';
import 'package:mj_image_slider/mj_image_slider.dart';
import 'package:mj_image_slider/mj_options.dart';
import 'package:rex/components/businesses.dart';
import 'package:rex/components/base_button.dart';
import 'package:rex/components/choice_text.dart';
import 'package:rex/components/top_bar.dart';
import 'package:rex/views/salon_page.dart';

import 'gaz_page.dart';

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
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TopBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
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
          const Spacer(),
          const ChoiceText(),
          const SizedBox(height: 34.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Businesses(
                image: Image.asset('images/Gaz.png'),
                service: 'GAZ',
                onTap: () {
                  Navigator.pushNamed(context, '/e');
                },
              ),
              const SizedBox(width: 30.0),
              Businesses(
                image: Image.asset('images/Salon.png'),
                service: 'SALON',
                onTap: () {
                  Navigator.pushNamed(context, '/g');
                },
              ),
            ],
          ),
          const Spacer(),
          // Divider(
          //   color: RexColors.divider,
          //   thickness: 3.0,
          // ),
        ],
      ),
      bottomNavigationBar: const BaseButton(),
    );
  }
}
//TODO: Change the image slider thingy.
