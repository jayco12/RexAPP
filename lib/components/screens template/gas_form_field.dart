import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/constants.dart';

class GazFormField extends StatelessWidget {
  const GazFormField({
    Key? key,
    this.onChanged,
    required this.enabled,
    required this.margin,
    this.controller,
    this.initialValue,
    required this.text,
  }) : super(key: key);

  final bool enabled;
  final dynamic margin;
  final String text;
  final controller;
  final initialValue;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        initialValue: initialValue,
        controller: controller,
        enabled: enabled,
        keyboardType: TextInputType.number,
        style: GoogleFonts.roboto(
          color: Colors.black,
          textStyle: kFormStyleRoboto,
          height: .08,
        ),
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
