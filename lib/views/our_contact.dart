import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/base_button.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/components/top_bar.dart';

class OurContact extends StatelessWidget {
  const OurContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TopBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Text(
            'Contact Information',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontFamily: 'fonts/Poppins-Medium.ttf',
                fontWeight: FontWeight.w500,
                color: RexColors.textColor,
                fontSize: 29.0,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.phone_enabled,),
                    const SizedBox(width: 30.63,),
                    Text(
                      '+227 8777 8777',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontFamily: 'fonts/Poppins-Medium.ttf',
                          fontWeight: FontWeight.w500,
                          color: RexColors.orderColorShadow,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 15.0,
                  indent: 100.0,
                  endIndent: 100.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Icon(Icons.whatsapp_outlined, color: Colors.green),
                    const SizedBox(width: 30.63,),
                    Text(
                      '+227 8777 8777',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontFamily: 'fonts/Poppins-Medium.ttf',
                          fontWeight: FontWeight.w500,
                          color: RexColors.orderColorShadow,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 15.0,
                  indent: 100.0,
                  endIndent: 100.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FaIcon(FontAwesomeIcons.envelope, color: Colors.red,),
                    const SizedBox(width: 30.63,),
                    Text(
                      'contact@rexgroups.com.ne',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontFamily: 'fonts/Poppins-Medium.ttf',
                          fontWeight: FontWeight.w500,
                          color: RexColors.orderColorShadow,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BaseButton(),
    );
  }
}
