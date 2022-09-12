import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/components/top_bar.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TopBar(),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          const Text('Information Utilisateur'),
          CupertinoTextField(
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontFamily: 'fonts/Poppins-Regular.ttf',
                fontWeight: FontWeight.w200,
                color: RexColors.sauvegarder,
                fontSize: 11.0,
              ),
            ),
          ),
          CupertinoTextField(
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontFamily: 'fonts/Poppins-Regular.ttf',
                fontWeight: FontWeight.w200,
                color: RexColors.sauvegarder,
                fontSize: 11.0,
              ),
            ),
          ),
          CupertinoTextField(
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontFamily: 'fonts/Poppins-Regular.ttf',
                fontWeight: FontWeight.w200,
                color: RexColors.sauvegarder,
                fontSize: 11.0,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(RexColors.sauvegarder),
              shadowColor:
                  MaterialStateProperty.all(RexColors.sauvegarderShadow),
              elevation: MaterialStateProperty.all(12.0),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(24.0, 24.0),
                  ),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SAUVEGARDER',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontFamily: 'fonts/Poppins-Regular.ttf',
                      fontWeight: FontWeight.w500,
                      color: RexColors.pageColor,
                      fontSize: 9.0,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward_rounded, size: 10.09),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
