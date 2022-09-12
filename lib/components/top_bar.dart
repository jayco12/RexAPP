import 'package:flutter/material.dart';
import 'package:rex/views/about_us.dart';
import 'package:rex/views/our_contact.dart';

class TopBar extends StatefulWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage(
              'images/appBar.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
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
            SizedBox(
              width: 145.0,
            ),
            InkResponse(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OurContact(),
                    ),
                  );
                });
              },
              child: Icon(Icons.phone),
            ),
            SizedBox(width: 20.0),
            Icon(Icons.info_outline_rounded),
            SizedBox(width: 20.0),
            InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(),
                      ),
                    );
                  });
                },
                child: Icon(Icons.group_rounded)),
            SizedBox(width: 20.0),
          ],
        ),
      ],
    );
  }
}

//TODO: Change the appBar picture when ABOO sends it over, and also the icons everywhere.
