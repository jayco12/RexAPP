import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/rex_colors.dart';
import 'package:rex/components/utilities/constants.dart';

class Submit extends StatelessWidget {
  const Submit({
    Key? key,
    //required this.onPressed,
    required this.margin,
    required this.text,
  }) : super(key: key);

  //final Function()? onPressed;
  final dynamic margin;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              RexColors.ajouterAuPanier),
          shadowColor: MaterialStateProperty.all(
              RexColors.ajouterAuPanierShadow),
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
              text,
              style: GoogleFonts.poppins(
                textStyle: kButton,
              ),
            ),
            const SizedBox(
              width: 8.78,
            ),
            const Icon(
              Icons.arrow_forward_rounded,
              size: 10.09,
            ),
          ],
        ),
      ),
    );
  }
}