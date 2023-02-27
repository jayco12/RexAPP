import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/screens template/contact.dart';
import 'package:rex/components/header&footer/top_bar.dart';

class OurContact extends StatelessWidget {

  const OurContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: TopBar(
          phonenavigator: Container(),
          infonavigator: InkResponse(
            onTap: () {
              //widget.infonavigator;
            },
            child: const Icon(Icons.info_outline_rounded),
          ),
          aboutnavigator: InkResponse(
              onTap: () {
                context.router.replaceNamed('/about-us');
              },
              child: const Icon(Icons.group_rounded)),
        ),
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
              textStyle: kLeadText,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: const [
                Contact(
                    icon: Icons.phone_enabled,
                    text: '+227 8777 8777',
                    color: Colors.green),
                Div(),
                Contact(
                  icon: Icons.whatsapp,
                  text: '+227 8777 8777',
                  color: Colors.green,
                ),
                Div(),
                Contact(
                  icon: FontAwesomeIcons.envelope,
                  text: 'contact@rexgroups.com.ne',
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Div extends StatelessWidget {
  const Div({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 15.0,
      indent: 100.0,
      endIndent: 100.0,
    );
  }
}
