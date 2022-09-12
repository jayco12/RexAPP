import 'package:flutter/material.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:google_fonts/google_fonts.dart';


class Businesses extends StatelessWidget {
  const Businesses({required this.onTap, required this.service, required this.image});

  final Function() onTap;
  final String service;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RawMaterialButton(
          elevation: 0.0,
          constraints: const BoxConstraints.tightFor(
            width: 133.0,
            height: 134.0,
          ),
          shape: const CircleBorder(),
          fillColor: RexColors.pageColor,
          onPressed: onTap,
          child: image,
        ),
        const SizedBox(height: 10.0),
        Text(
          service,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontFamily: 'fonts/Poppins-SemiBold.ttf',
              fontWeight: FontWeight.bold,
              color: RexColors.textColor,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}
