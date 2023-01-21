import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/utilities/submit.dart';
import 'package:rex/components/screens builder/user.dart';

class UserInfo extends StatelessWidget {
  static const String id = 'user_info';
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 45.0, right: 45.0),
            height: 40.0,
            child: Text(
              'Information Utilisateur',
              style: GoogleFonts.poppins(
                textStyle: kInformationUtilisateur,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          Expanded(
            child: ListView(
              children: const [
                User(image: 'images/abouticon.png', placeholder: 'Caleb Peter'),
                SizedBox(
                  height: 29.0,
                ),
                User(
                    image: 'images/telephone.png',
                    placeholder: '+227 01234567'),
                SizedBox(
                  height: 26.0,
                ),
                User(
                    image: 'images/locationicon.png',
                    placeholder: 'Adresse de livraison'),
                SizedBox(
                  height: 45.5,
                ),
                Submit(
                    margin: EdgeInsets.only(left: 116.0, right: 116.0),
                    text: 'SAUVEGARDER'),
              ],
            ),
          ),
        ],
      );
      // bottomNavigationBar: const BaseButton(),

  }
}
