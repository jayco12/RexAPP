import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/constants.dart';

class SalonFormField extends StatelessWidget {
  const SalonFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 53.0, right: 128.0),
      child: CupertinoTextField(
        style: GoogleFonts.roboto(
          textStyle: kFormStyleRoboto,
        ),
      ),
    );
  }
}