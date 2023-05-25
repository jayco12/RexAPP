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
import 'package:flutter/cupertino.dart' as _i16;
import 'package:flutter/material.dart' as _i15;

import '../components/header_footer/base_button.dart' as _i2;
import '../screens/about_us.dart' as _i10;
import '../screens/cart_screen/cart_screen2.dart' as _i4;
import '../screens/cart_screen/start_shopping.dart' as _i5;
import '../screens/gaz_form.dart' as _i11;
import '../screens/gaz_page.dart' as _i7;
import '../screens/home_page.dart' as _i3;
import '../screens/location/select_location.dart' as _i13;
import '../screens/our_contact.dart' as _i9;
import '../screens/salon_form.dart' as _i12;
import '../screens/salon_page.dart' as _i8;
import '../screens/splash_view.dart' as _i1;
import '../screens/user_info.dart' as _i6;

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
        child: const _i2.BaseButton(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.MaterialPageX<_i16.Widget>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    CartScreen2.name: (routeData) {
      final args = routeData.argsAs<CartScreen2Args>(
          orElse: () => const CartScreen2Args());
      return _i14.MaterialPageX<_i16.Widget>(
        routeData: routeData,
        child: _i4.CartScreen2(key: args.key),
      );
    },
    StartShopping.name: (routeData) {
      return _i14.MaterialPageX<_i16.Widget>(
        routeData: routeData,
        child: const _i5.StartShopping(),
      );
    },
    UserInfo.name: (routeData) {
      return _i14.MaterialPageX<_i16.Widget>(
        routeData: routeData,
        child: const _i6.UserInfo(),
      );
    },
    GazRoute.name: (routeData) {
      final args = routeData.argsAs<GazRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.GazPage(
          key: args.key,
          addAppbar: args.addAppbar,
        ),
      );
    },
    SalonRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SalonPage(),
      );
    },
    OurContact.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.OurContact(),
      );
    },
    AboutUs.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.AboutUs(),
      );
    },
    GazForm.name: (routeData) {
      final args = routeData.argsAs<GazFormArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.GazForm(
          key: args.key,
          image: args.image,
        ),
      );
    },
    SalonForm.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SalonForm(),
      );
    },
    SelectLocation.name: (routeData) {
      final args = routeData.argsAs<SelectLocationArgs>(
          orElse: () => const SelectLocationArgs());
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.SelectLocation(key: args.key),
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
          children: [
            _i14.RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: BaseButton.name,
              children: [
                _i14.RouteConfig(
                  GazRoute.name,
                  path: 'gaz-page',
                  parent: HomeRoute.name,
                  children: [
                    _i14.RouteConfig(
                      GazForm.name,
                      path: 'gaz-form',
                      parent: GazRoute.name,
                    )
                  ],
                ),
                _i14.RouteConfig(
                  SalonRoute.name,
                  path: 'salon-page',
                  parent: HomeRoute.name,
                  children: [
                    _i14.RouteConfig(
                      SalonForm.name,
                      path: 'salon-form',
                      parent: SalonRoute.name,
                    )
                  ],
                ),
                _i14.RouteConfig(
                  OurContact.name,
                  path: 'our-contact',
                  parent: HomeRoute.name,
                ),
                _i14.RouteConfig(
                  AboutUs.name,
                  path: 'about-us',
                  parent: HomeRoute.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              CartScreen2.name,
              path: 'cart-screen2',
              parent: BaseButton.name,
            ),
            _i14.RouteConfig(
              StartShopping.name,
              path: 'start-shopping',
              parent: BaseButton.name,
            ),
            _i14.RouteConfig(
              UserInfo.name,
              path: 'user-info',
              parent: BaseButton.name,
              children: [
                _i14.RouteConfig(
                  SelectLocation.name,
                  path: 'select-location',
                  parent: UserInfo.name,
                )
              ],
            ),
          ],
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
  const BaseButton({List<_i14.PageRouteInfo>? children})
      : super(
          BaseButton.name,
          path: '/base-button',
          initialChildren: children,
        );

  static const String name = 'BaseButton';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: 'home-page',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.CartScreen2]
class CartScreen2 extends _i14.PageRouteInfo<CartScreen2Args> {
  CartScreen2({_i16.Key? key})
      : super(
          CartScreen2.name,
          path: 'cart-screen2',
          args: CartScreen2Args(key: key),
        );

  static const String name = 'CartScreen2';
}

class CartScreen2Args {
  const CartScreen2Args({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'CartScreen2Args{key: $key}';
  }
}

/// generated route for
/// [_i5.StartShopping]
class StartShopping extends _i14.PageRouteInfo<void> {
  const StartShopping()
      : super(
          StartShopping.name,
          path: 'start-shopping',
        );

  static const String name = 'StartShopping';
}

/// generated route for
/// [_i6.UserInfo]
class UserInfo extends _i14.PageRouteInfo<void> {
  const UserInfo({List<_i14.PageRouteInfo>? children})
      : super(
          UserInfo.name,
          path: 'user-info',
          initialChildren: children,
        );

  static const String name = 'UserInfo';
}

/// generated route for
/// [_i7.GazPage]
class GazRoute extends _i14.PageRouteInfo<GazRouteArgs> {
  GazRoute({
    _i16.Key? key,
    required bool addAppbar,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          GazRoute.name,
          path: 'gaz-page',
          args: GazRouteArgs(
            key: key,
            addAppbar: addAppbar,
          ),
          initialChildren: children,
        );

  static const String name = 'GazRoute';
}

class GazRouteArgs {
  const GazRouteArgs({
    this.key,
    required this.addAppbar,
  });

  final _i16.Key? key;

  final bool addAppbar;

  @override
  String toString() {
    return 'GazRouteArgs{key: $key, addAppbar: $addAppbar}';
  }
}

/// generated route for
/// [_i8.SalonPage]
class SalonRoute extends _i14.PageRouteInfo<void> {
  const SalonRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SalonRoute.name,
          path: 'salon-page',
          initialChildren: children,
        );

  static const String name = 'SalonRoute';
}

/// generated route for
/// [_i9.OurContact]
class OurContact extends _i14.PageRouteInfo<void> {
  const OurContact()
      : super(
          OurContact.name,
          path: 'our-contact',
        );

  static const String name = 'OurContact';
}

/// generated route for
/// [_i10.AboutUs]
class AboutUs extends _i14.PageRouteInfo<void> {
  const AboutUs()
      : super(
          AboutUs.name,
          path: 'about-us',
        );

  static const String name = 'AboutUs';
}

/// generated route for
/// [_i11.GazForm]
class GazForm extends _i14.PageRouteInfo<GazFormArgs> {
  GazForm({
    _i16.Key? key,
    required String image,
  }) : super(
          GazForm.name,
          path: 'gaz-form',
          args: GazFormArgs(
            key: key,
            image: image,
          ),
        );

  static const String name = 'GazForm';
}

class GazFormArgs {
  const GazFormArgs({
    this.key,
    required this.image,
  });

  final _i16.Key? key;

  final String image;

  @override
  String toString() {
    return 'GazFormArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i12.SalonForm]
class SalonForm extends _i14.PageRouteInfo<void> {
  const SalonForm()
      : super(
          SalonForm.name,
          path: 'salon-form',
        );

  static const String name = 'SalonForm';
}

/// generated route for
/// [_i13.SelectLocation]
class SelectLocation extends _i14.PageRouteInfo<SelectLocationArgs> {
  SelectLocation({_i16.Key? key})
      : super(
          SelectLocation.name,
          path: 'select-location',
          args: SelectLocationArgs(key: key),
        );

  static const String name = 'SelectLocation';
}

class SelectLocationArgs {
  const SelectLocationArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'SelectLocationArgs{key: $key}';
  }
}
