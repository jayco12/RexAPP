import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/header_footer/top_bar.dart';
import 'package:rex/screens/gaz_page.dart';
import '../../screens/home_page.dart';
import '../../screens/user_info.dart';
import '../../screens/cart_screen/cart_screen2.dart';

class BaseButton extends StatefulWidget {
  const BaseButton({Key? key}) : super(key: key);

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  int _selectedIndex = 0;

  final List _widgetOptions = [
    const HomePage(),
    CartScreen2(),
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
    return Scaffold(
      appBar: PreferredSize(
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
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'information',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
     
//TODO: Fix the bottom Navigation to work as it should.
