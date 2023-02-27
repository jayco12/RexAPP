import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/header&footer/top_bar.dart';

class AboutUs extends StatelessWidget {

  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: const Size(
          double.infinity,
          120,
        ),
        child: TopBar(
          phonenavigator: InkResponse(
            onTap: () {
              context.router.replaceNamed('/our-contact');
            },
            child: const Icon(Icons.phone),
          ),
          infonavigator: InkResponse(
            onTap: () {
              //widget.infonavigator;
            },
            child: const Icon(Icons.info_outline_rounded),
          ),
          aboutnavigator: Container(),
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 50.0,
        ),
        Text(
          'About us',
          style: GoogleFonts.poppins(
            textStyle: kLeadText,
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rex Group',
                      style: GoogleFonts.poppins(
                        textStyle: kHeadings,
                      ),
                    ),
                    Text(
                      'Rex Group is a group of company that offers various business solutions ranging from Photography/Printing, Branding, Unisex Salon, Gas Depot to mention a few.',
                      style: GoogleFonts.poppins(
                        textStyle: kSubHeadings,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aims and Objectives',
                      style: GoogleFonts.poppins(
                        textStyle: kHeadings,
                      ),
                    ),
                    Text(
                      'To proffer viable solutions in the printing, branding, salon and gaz sector of the company',
                      style: GoogleFonts.poppins(
                        textStyle: kSubHeadings,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Goal',
                      style: GoogleFonts.poppins(
                        textStyle: kHeadings,
                      ),
                    ),
                    Text(
                      'To contribute to the Sustainable Development Goal by employing and equipping young individuals in the community.',
                      style: GoogleFonts.poppins(
                        textStyle: kSubHeadings,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, top: 17.0, right: 42.0, bottom: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vision',
                      style: GoogleFonts.poppins(
                        textStyle: kHeadings,
                      ),
                    ),
                    Text(
                      'By 2024, each sector of the company must have employed and successfully trained at least 10 youths',
                      style: GoogleFonts.poppins(
                        textStyle: kSubHeadings,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],),
    );
  }
}
