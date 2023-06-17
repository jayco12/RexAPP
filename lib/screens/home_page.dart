import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/screens template/businesses.dart';
import 'package:rex/components/utilities/choice_text.dart';

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
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Navigator(onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (
          BuildContext context,
        ) {
          return Scaffold(
            body: ListView(
              children: [
                CarouselSlider(
                  items: images
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(e), fit: BoxFit.fill)),
                            ),
                          ))
                      .toList(),
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    autoPlayInterval: const Duration(seconds: 4),
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 2,
                    enlargeFactor: 1,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GazPage(
                                        addAppbar: false,
                                      )));
                        }),
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
            ),
          );
        });
      }),
    );
  }
}
