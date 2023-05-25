import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/constants.dart';

class GasFormText extends StatelessWidget {
  GasFormText({
    Key? key,
    this.controller,
    required this.margin,
    required this.text,
    this.onChanged,
    required this.enabled,
  }) : super(key: key);

  final dynamic margin;
  final String text;
  final controller;
  bool enabled;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 15,
          textStyle: kGasFormStylePoppins,
        ),
      ),
    );
  }
}
