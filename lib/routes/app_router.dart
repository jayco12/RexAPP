import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:rex/components/header_footer/base_button.dart';
import 'package:rex/screens/splash_view.dart';
import 'package:rex/screens/about_us.dart';
import 'package:rex/screens/cart_screen/cart_screen2.dart';
import 'package:rex/screens/cart_screen/start_shopping.dart';
import 'package:rex/screens/gaz_page.dart';
import 'package:rex/screens/home_page.dart';
import 'package:rex/screens/our_contact.dart';
import 'package:rex/screens/salon_form.dart';
import 'package:rex/screens/salon_page.dart';
import 'package:rex/screens/select_location.dart';
import 'package:rex/screens/user_info.dart';

import '../screens/gaz_form.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(
      page: BaseButton,
      children: <AutoRoute<Widget>>[
        AutoRoute(
          page: HomePage,
          children: [
            AutoRoute(
              page: GazPage,
              children: [
                AutoRoute(
                  page: GazForm,
                ),
              ],
            ),
            AutoRoute(
              page: SalonPage,
              children: [
                AutoRoute(page: SalonForm),
              ],
            ),
            AutoRoute(page: OurContact),
            AutoRoute(page: AboutUs),
          ],
        ),
        AutoRoute(page: CartScreen2),
        AutoRoute(page: StartShopping),
        AutoRoute(
          page: UserInfo,
          children: [
            AutoRoute(page: SelectLocation),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
