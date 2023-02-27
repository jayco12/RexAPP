// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../components/header&footer/base_button.dart' as _i2;
import '../screens/about_us.dart' as _i5;
import '../screens/cart/cart_screen2.dart' as _i7;
import '../screens/cart/cart_tile.dart' as _i6;
import '../screens/cart/start_shopping.dart' as _i8;
import '../screens/gaz_page.dart' as _i9;
import '../screens/home_page.dart' as _i3;
import '../screens/our_contact.dart' as _i4;
import '../screens/salon_form.dart' as _i11;
import '../screens/salon_page.dart' as _i10;
import '../screens/select_location.dart' as _i13;
import '../screens/splash_view.dart' as _i1;
import '../screens/user_info.dart' as _i12;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    BaseButton.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.BaseButton(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    OurContact.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OurContact(),
      );
    },
    AboutUs.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.AboutUs(),
      );
    },
    CartTile.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CartTile(),
      );
    },
    CartScreen2.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CartScreen2(),
      );
    },
    StartShopping.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.StartShopping(),
      );
    },
    GazRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.GazPage(),
      );
    },
    SalonRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SalonPage(),
      );
    },
    SalonForm.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SalonForm(),
      );
    },
    UserInfo.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.UserInfo(),
      );
    },
    SelectLocation.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SelectLocation(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          SplashView.name,
          path: '/',
        ),
        _i14.RouteConfig(
          BaseButton.name,
          path: '/base-button',
        ),
        _i14.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i14.RouteConfig(
          OurContact.name,
          path: '/our-contact',
        ),
        _i14.RouteConfig(
          AboutUs.name,
          path: '/about-us',
        ),
        _i14.RouteConfig(
          CartTile.name,
          path: '/cart-tile',
        ),
        _i14.RouteConfig(
          CartScreen2.name,
          path: '/cart-screen2',
        ),
        _i14.RouteConfig(
          StartShopping.name,
          path: '/start-shopping',
        ),
        _i14.RouteConfig(
          GazRoute.name,
          path: '/gaz-page',
        ),
        _i14.RouteConfig(
          SalonRoute.name,
          path: '/salon-page',
        ),
        _i14.RouteConfig(
          SalonForm.name,
          path: '/salon-form',
        ),
        _i14.RouteConfig(
          UserInfo.name,
          path: '/user-info',
        ),
        _i14.RouteConfig(
          SelectLocation.name,
          path: '/select-location',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i14.PageRouteInfo<void> {
  const SplashView()
      : super(
          SplashView.name,
          path: '/',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.BaseButton]
class BaseButton extends _i14.PageRouteInfo<void> {
  const BaseButton()
      : super(
          BaseButton.name,
          path: '/base-button',
        );

  static const String name = 'BaseButton';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.OurContact]
class OurContact extends _i14.PageRouteInfo<void> {
  const OurContact()
      : super(
          OurContact.name,
          path: '/our-contact',
        );

  static const String name = 'OurContact';
}

/// generated route for
/// [_i5.AboutUs]
class AboutUs extends _i14.PageRouteInfo<void> {
  const AboutUs()
      : super(
          AboutUs.name,
          path: '/about-us',
        );

  static const String name = 'AboutUs';
}

/// generated route for
/// [_i6.CartTile]
class CartTile extends _i14.PageRouteInfo<void> {
  const CartTile()
      : super(
          CartTile.name,
          path: '/cart-tile',
        );

  static const String name = 'CartTile';
}

/// generated route for
/// [_i7.CartScreen2]
class CartScreen2 extends _i14.PageRouteInfo<void> {
  const CartScreen2()
      : super(
          CartScreen2.name,
          path: '/cart-screen2',
        );

  static const String name = 'CartScreen2';
}

/// generated route for
/// [_i8.StartShopping]
class StartShopping extends _i14.PageRouteInfo<void> {
  const StartShopping()
      : super(
          StartShopping.name,
          path: '/start-shopping',
        );

  static const String name = 'StartShopping';
}

/// generated route for
/// [_i9.GazPage]
class GazRoute extends _i14.PageRouteInfo<void> {
  const GazRoute()
      : super(
          GazRoute.name,
          path: '/gaz-page',
        );

  static const String name = 'GazRoute';
}

/// generated route for
/// [_i10.SalonPage]
class SalonRoute extends _i14.PageRouteInfo<void> {
  const SalonRoute()
      : super(
          SalonRoute.name,
          path: '/salon-page',
        );

  static const String name = 'SalonRoute';
}

/// generated route for
/// [_i11.SalonForm]
class SalonForm extends _i14.PageRouteInfo<void> {
  const SalonForm()
      : super(
          SalonForm.name,
          path: '/salon-form',
        );

  static const String name = 'SalonForm';
}

/// generated route for
/// [_i12.UserInfo]
class UserInfo extends _i14.PageRouteInfo<void> {
  const UserInfo()
      : super(
          UserInfo.name,
          path: '/user-info',
        );

  static const String name = 'UserInfo';
}

/// generated route for
/// [_i13.SelectLocation]
class SelectLocation extends _i14.PageRouteInfo<void> {
  const SelectLocation()
      : super(
          SelectLocation.name,
          path: '/select-location',
        );

  static const String name = 'SelectLocation';
}
