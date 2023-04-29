import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar(
      {Key? key,
      required this.phonenavigator,
      required this.infonavigator,
      required this.aboutnavigator})
      : super(key: key);

  final Widget phonenavigator;
  final Widget infonavigator;
  final Widget aboutnavigator;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      flexibleSpace: Stack(
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Image.asset(
              "images/appBar.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Image.asset(
          'images/rex white logo.png',
          width: 81,
          height: 114.56,
        ),
      ),
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            phonenavigator,
            const SizedBox(width: 20.0),
            infonavigator,
            const SizedBox(width: 20.0),
            aboutnavigator,
            const SizedBox(width: 5.0),
          ],
        ),
      ],
    );
  }
}
