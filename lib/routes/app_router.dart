import 'package:auto_route/auto_route.dart';
import 'package:rex/components/header&footer/base_button.dart';
import 'package:rex/screens/gaz_form.dart';
import 'package:rex/screens/splash_view.dart';
import 'package:rex/screens/about_us.dart';
import 'package:rex/screens/cart/cart_screen2.dart';
import 'package:rex/screens/cart/cart_tile.dart';
import 'package:rex/screens/cart/start_shopping.dart';
import 'package:rex/screens/gaz_page.dart';
import 'package:rex/screens/home_page.dart';
import 'package:rex/screens/our_contact.dart';
import 'package:rex/screens/salon_form.dart';
import 'package:rex/screens/salon_page.dart';
import 'package:rex/screens/select_location.dart';
import 'package:rex/screens/user_info.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: BaseButton),
    AutoRoute(page: HomePage),
    AutoRoute(page: OurContact),
    AutoRoute(page: AboutUs),
    AutoRoute(page: CartTile),
    AutoRoute(page: CartScreen2),
    AutoRoute(page: StartShopping),
    AutoRoute(page: GazPage),
    AutoRoute(page: SalonPage),
    AutoRoute(page: SalonForm),
    AutoRoute(page: UserInfo),
    AutoRoute(page: SelectLocation),
  ],
)
class $AppRouter {}
