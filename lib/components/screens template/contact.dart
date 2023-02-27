import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/constants.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(
          width: 30.63,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: kActualContact,
          ),
        ),
      ],
    );
  }
}