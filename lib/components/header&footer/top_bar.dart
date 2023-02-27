import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  TopBar(
      {Key? key, this.phonenavigator, this.infonavigator, this.aboutnavigator})
      : super(key: key);

  var phonenavigator;
  var infonavigator;
  var aboutnavigator;

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
            phonenavigator,
            // InkResponse(
            //   onTap: () {
            //     Navigator.pushNamed(context, OurContact.id);
            //   },
            //   child: const Icon(Icons.phone),
            // ),
            const SizedBox(width: 20.0),
            infonavigator,
            // InkResponse(
            //   onTap: () {
            //     //widget.infonavigator;
            //   },
            //   child: const Icon(Icons.info_outline_rounded),
            // ),
            const SizedBox(width: 20.0),
            aboutnavigator,
            // InkResponse(
            //   onTap: () {
            //     Navigator.pushNamed(context, AboutUs.id);
            //   },
            //   child: const Icon(Icons.group_rounded),
            // ),
            const SizedBox(width: 20.0),
          ],
        ),
      ],
    );
  }
}

//TODO:https://www.iconfinder.com/search?q=cart - for the icons
//TODO:(https://medium.com/flutter-community/how-to-add-custom-icons-to-your-flutter-application-463dbd35fd39) - to add the icons to project.

