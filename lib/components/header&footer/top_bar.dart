import 'package:flutter/material.dart';
import 'package:rex/components/header&footer/base_button.dart';
import 'package:rex/screens/about_us.dart';
import 'package:rex/screens/home_page.dart';
import 'package:rex/screens/our_contact.dart';

enum ViewPages {
  OurContact(),
  AboutUs(),
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BuildContext? currentPage;
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
              // centerSlice:  Rect.fromLTRB(6.0, 1.0, 17.0, 49.0),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      actions: [
        Row(
          children: [
            Image.asset(
              'images/rex white logo.png',
              width: 81,
              height: 114.56,
            ),
            const SizedBox(
              width: 145.0,
            ),
            InkResponse(
              onTap: () {
                Navigator.pushNamed(context, OurContact.id);
              },
              child: const Icon(Icons.phone),
            ),
            const SizedBox(width: 20.0),
            const Icon(Icons.info_outline_rounded),
            const SizedBox(width: 20.0),
            InkResponse(
                onTap: () {
                  Navigator.pushNamed(context, AboutUs.id);
                },
                child: const Icon(Icons.group_rounded)),
            const SizedBox(width: 20.0),
          ],
        ),
      ],
    );
  }
}


//TODO:https://www.iconfinder.com/search?q=cart - for the icons
//TODO:(https://medium.com/flutter-community/how-to-add-custom-icons-to-your-flutter-application-463dbd35fd39) - to add the icons to project.
