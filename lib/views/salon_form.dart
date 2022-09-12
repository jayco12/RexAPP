import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/back_arrow.dart';
import 'package:rex/components/choice_text.dart';
import 'package:rex/components/floating_button.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/components/top_bar.dart';

class SalonForm extends StatefulWidget {
  const SalonForm({Key? key}) : super(key: key);

  @override
  State<SalonForm> createState() => _SalonFormState();
}

class _SalonFormState extends State<SalonForm> {

  String dropdownvalue = 'Domicile';

  var items = [
    'Domicile',
    'Boutique',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TopBar(),
      ),
      body: Column(
        children: [
          FloatingButton(
            button: Image.asset('images/Gaz.png'), onTap: () {
            Navigator.pushReplacementNamed(context, '/e');
          },
          ),
          const BackArrow(),
          const ChoiceText(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 53.0),
                  child: Text(
                    'Temps',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontFamily: 'fonts/Poppins-Regular.ttf',
                        fontWeight: FontWeight.w500,
                        color: RexColors.orderTextColor,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 53.0, right: 128.0),
                  child: CupertinoTextField(
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontFamily: 'fonts/Roboto-Regular.ttf',
                        fontWeight: FontWeight.w500,
                        color: RexColors.orderTextColor,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5.0,),
                Container(
                  margin: const EdgeInsets.only(left: 53.0),
                  child: Text(
                    'Date',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontFamily: 'fonts/Poppins-Regular.ttf',
                        fontWeight: FontWeight.w500,
                        color: RexColors.orderTextColor,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 53.0, right: 128.0),
                  child: CupertinoTextField(
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontFamily: 'fonts/Roboto-Regular.ttf',
                        fontWeight: FontWeight.w500,
                        color: RexColors.orderTextColor,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5.0,),
                Container(
                  margin: const EdgeInsets.only(left: 53.0,),
                  child: Text(
                    'Lieu',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontFamily: 'fonts/Poppins-Regular.ttf',
                        fontWeight: FontWeight.w500,
                        color: RexColors.orderTextColor,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 53.0, right: 238.0),
                  child: DropdownButton(
                    elevation: 8,
                    value: dropdownvalue,
                    items: items.map(
                          (String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontFamily: 'fonts/roboto-Regular.ttf',
                                color: RexColors.orderTextColor,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 5.0,),
                Container(
                  margin: const EdgeInsets.only(left: 53.0,),
                  child: Text(
                    'Prix',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontFamily: 'fonts/Poppins-Regular.ttf',
                        fontWeight: FontWeight.w500,
                        color: RexColors.orderTextColor,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 53.0, right: 221.0),
                  child: CupertinoTextField(
                    placeholder: '2,500',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontFamily: 'fonts/Roboto-Regular.ttf',
                        fontWeight: FontWeight.w500,
                        color: RexColors.orderTextColor,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14.0,),

                Container(
                  margin: const EdgeInsets.only(left: 53.0, right: 206.0),
                  child: ElevatedButton(
                    onPressed: () {},
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
                          'SAUVEGARDER',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontFamily: 'fonts/Poppins-Regular.ttf',
                              fontWeight: FontWeight.w500,
                              color: RexColors.pageColor,
                              fontSize: 9.0,
                            ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
