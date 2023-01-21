import 'package:flutter/material.dart';
import 'package:rex/cart_page.dart';
import 'package:rex/screens/splash_view.dart';
import 'package:rex/screens/about_us.dart';
import 'package:rex/screens/gaz_page.dart';
import 'package:rex/screens/home_page.dart';
import 'package:rex/screens/our_contact.dart';
import 'package:rex/screens/salon_form.dart';
import 'package:rex/screens/salon_page.dart';
import 'package:rex/screens/user_info.dart';


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
      initialRoute: SplashView.id,
      routes:   {
        SplashView.id: (context) => SplashView(),
        HomePage.id: (context) => HomePage(),
        OurContact.id: (context) => OurContact(),
        AboutUs.id: (context) => AboutUs(),
        CartPage.id: (context) => CartPage(),
        GazPage.id: (context) => GazPage(),
        SalonPage.id: (context) => SalonPage(),
        SalonForm.id: (context) => SalonForm(),
        UserInfo.id: (context) => UserInfo(),
      },
    );
  }
}


