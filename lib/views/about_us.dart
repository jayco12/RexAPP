import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/base_button.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/components/top_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(
          double.infinity,
          120,
        ),
        child: TopBar(),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50.0,),
          Text(
                'About us',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontFamily: 'fonts/Poppins-Medium.ttf',
                    fontWeight: FontWeight.w500,
                    color: RexColors.textColor,
                    fontSize: 29.0,
                  ),
                ),
              ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rex Group',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Bold.ttf',
                            fontWeight: FontWeight.bold,
                            color: RexColors.textColor,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Text(
                        'Rex Group is a group of company that offers various business solutions ranging from Photography/Printing, Branding, Unisex Salon, Gas Depot to mention a few.',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Regular.ttf',
                            fontWeight: FontWeight.w400,
                            color: RexColors.otherTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aims and Objectives',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Bold.ttf',
                            fontWeight: FontWeight.bold,
                            color: RexColors.textColor,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Text(
                        'To proffer viable solutions in the printing, branding, salon and gaz sector of the company',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Regular.ttf',
                            fontWeight: FontWeight.w400,
                            color: RexColors.otherTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Goal',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Bold.ttf',
                            fontWeight: FontWeight.bold,
                            color: RexColors.textColor,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Text(
                        'To contribute to the Sustainable Development Goal by employing and equipping young individuals in the community.',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Regular.ttf',
                            fontWeight: FontWeight.w400,
                            color: RexColors.otherTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vision',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Bold.ttf',
                            fontWeight: FontWeight.bold,
                            color: RexColors.textColor,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Text(
                        'By 2024, each sector of the company must have employed and successfully trained at least 10 youths',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontFamily: 'fonts/Poppins-Regular.ttf',
                            fontWeight: FontWeight.w400,
                            color: RexColors.otherTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ]
      ),
      bottomNavigationBar: const BaseButton(),
    );
  }
}
