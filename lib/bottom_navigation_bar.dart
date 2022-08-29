import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF231F1F),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_sharp,
              color: Color(0xFF231F1F),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF231F1F),
            ),
            label: ''),
      ],
    );
  }
}