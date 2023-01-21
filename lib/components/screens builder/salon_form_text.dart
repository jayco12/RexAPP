import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/constants.dart';

class SalonFormText extends StatelessWidget {
  const SalonFormText({
    Key? key, required this.text
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 53.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: kSalonFormStylePoppins,
        ),
      ),
    );
  }
}