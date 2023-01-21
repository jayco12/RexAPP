import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/constants.dart';

class GazFormField extends StatelessWidget {
  const GazFormField({
    Key? key,
    required this.enabled,
    required this.margin,
    required this.text,
  }) : super(key: key);

  final bool enabled;
  final dynamic margin;
  final String text;

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
      ),
    );
  }
}