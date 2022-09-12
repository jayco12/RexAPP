import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceText extends StatelessWidget {
  const ChoiceText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
      child: Text(
        'Cliquez sur votre choix',
        style: GoogleFonts.poppins(
          textStyle:const TextStyle(
            fontFamily: 'fonts/Poppins-Regular.ttf',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}