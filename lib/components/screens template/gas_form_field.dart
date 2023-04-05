import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/constants.dart';

class GazFormField extends StatelessWidget {
   const GazFormField({
    Key? key,
    this.onChanged,
    required this.enabled,
    required this.margin,
    required this.text,
  }) : super(key: key);

  final bool enabled;
  final dynamic margin;
  final String text;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: CupertinoTextField(
        enabled: enabled,
        keyboardType: TextInputType.number,
        placeholder: text,
        style: GoogleFonts.roboto(
          textStyle: kFormStyleRoboto,
        ),
        onChanged: onChanged,
      ),
    );
  }
}