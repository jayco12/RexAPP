import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/header&footer/top_bar.dart';
import 'package:rex/components/utilities/rex_colors.dart';
import 'package:rex/screens/cart/start_shopping.dart';
// import '../../routes/app_router.gr.dart';
import '../../screens/home_page.dart';
import '../../screens/user_info.dart';
import '../../screens/cart/cart_screen2.dart';

class BaseButton extends StatefulWidget {
  const BaseButton({Key? key}) : super(key: key);

  @override
  _BaseButtonState createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  int _selectedIndex = 0;
  final List _widgetOptions = [
    const HomePage(),
    //const StartShopping(),
    const CartScreen2(),
    const UserInfo(),
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
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 40,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: RexColors.divider, width: 3.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Base(
                margin: const EdgeInsets.only(left: 59.0, right: 71.1),
                image: 'images/homeicon.png',
                onTap: () {
                  _onItemTap(0);
                },
              ),
              Base(
                margin: EdgeInsets.zero,
                image: 'images/carticon.png',
                onTap: () {
                  _onItemTap(1);
                },
              ),
              Base(
                margin: const EdgeInsets.only(left: 71.1, right: 59.0),
                image: 'images/usericon.png',
                onTap: () {
                  _onItemTap(2);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Base extends StatelessWidget {
  const Base(
      {Key? key,
      required this.margin,
      required this.image,
      required this.onTap})
      : super(key: key);

  final String image;
  final void Function()? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: InkResponse(
        onTap: onTap,
        child: ImageIcon(
          AssetImage(image),
          size: 30.0,
        ),
      ),
    );
  }
}

//TODO: Fix the bottom Navigation to work as it should.
