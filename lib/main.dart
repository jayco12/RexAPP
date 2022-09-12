
import 'package:flutter/material.dart';
import 'package:rex/views/splash_view.dart';
import 'package:rex/views/about_us.dart';
import 'package:rex/views/gaz_form.dart';
import 'package:rex/views/gaz_page.dart';
import 'package:rex/views/home_page.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/views/our_contact.dart';
import 'package:rex/views/salon_form.dart';
import 'package:rex/views/salon_page.dart';

void main() {
  runApp(const Rex(),);
}

class Rex extends StatelessWidget {
  const Rex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rex',
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: RexColors.pageColor,
      ),
      initialRoute: '/1',
      routes:   {
        '/1': (BuildContext context) => SplashView(),
        '/a': (BuildContext context) => HomePage(),
        '/b': (BuildContext context) => OurContact(),
        // '/c': (BuildContext context) => Info(),
        '/d': (BuildContext context) => AboutUs(),
        '/e': (BuildContext context) => GazPage(),
        '/f': (BuildContext context) => GazForm(),
        '/g': (BuildContext context) => SalonPage(),
        '/h': (BuildContext context) => SalonForm(),
      },
    );
  }
}

