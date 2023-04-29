import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/header_footer/new_base_button.dart';
import 'package:rex/components/header_footer/top_bar.dart';
import 'package:rex/components/utilities/rex_colors.dart';
import 'package:rex/screens/gaz_page.dart';
// import '../../routes/app_router.gr.dart';
import '../../screens/gaz_form.dart';
import '../../screens/home_page.dart';
import '../../screens/user_info.dart';
import '../../screens/cart_screen/start_shopping.dart';
import '../../screens/cart_screen/cart_screen2.dart';
import '../screens template/base.dart';

class BaseButton extends StatefulWidget {
  const BaseButton({Key? key}) : super(key: key);

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

List<Gaz> _cartList = <Gaz>[];

class _BaseButtonState extends State<BaseButton> {
  int _selectedIndex = 0;

  final List _widgetOptions = [
    const HomePage(),
    const CartScreen2(),
    const UserInfo(),
    GazPage()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = BaseBar();
    return scaffold;
  }
}

PreferredSize buildAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 120),
    child: TopBar(
      phonenavigator: InkResponse(
        onTap: () {
          context.router.pushNamed('/our-contact');
        },
        child: const Icon(Icons.phone),
      ),
      infonavigator: InkResponse(
        onTap: () {
          //widget.infonavigator;
        },
        child: const Icon(Icons.info_outline_rounded),
      ),
      aboutnavigator: InkResponse(
          onTap: () {
            context.router.pushNamed('/about-us');
          },
          child: const Icon(Icons.group_rounded)),
    ),
  );
}


//TODO: Fix the bottom Navigation to work as it should.
