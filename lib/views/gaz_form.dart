import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/back_arrow.dart';
import 'package:rex/components/choice_text.dart';
import 'package:rex/components/floating_button.dart';
import 'package:rex/components/rex_colors.dart';
import 'package:rex/components/top_bar.dart';
import 'package:rex/components/base_button.dart';


class GazForm extends StatefulWidget {
  const GazForm({Key? key}) : super(key: key);

  @override
  State<GazForm> createState() => _GazFormState();
}

class _GazFormState extends State<GazForm> {

  String dropdownvalue = '6KG';

  var items = [
    '6KG',
    '12KG',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        child: TopBar(),
        preferredSize: Size(double.infinity, 120),
      ),
      body: Column(
        children: [
          FloatingButton(button: Image.asset('images/Salon.png'), onTap: () {
            Navigator.pushReplacementNamed(context, '/g');
          },),
          BackArrow(),
          ChoiceText(),
          Expanded(
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 26.0,
                    ),
                    Image.asset(
                      'images/SogaGaz.png',
                      width: 105.5,
                      height: 106.35,
                    ),
                    SizedBox(
                      width: 9.5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: RexColors.orderColorShadow.withOpacity(0.16),
                            offset: Offset.infinite,
                            blurRadius: 4.0,
                            blurStyle: BlurStyle.outer,
                          ),
                        ],
                        backgroundBlendMode: BlendMode.darken,
                        color: RexColors.orderColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      width: 204.0,
                      height: 304.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.0, top: 25.0),
                            child: Text(
                              'Taille',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontFamily: 'fonts/Poppins-SemiBold.ttf',
                                  fontWeight: FontWeight.w500,
                                  color: RexColors.orderTextColor,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0, right: 80.0),
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
                                        textStyle: TextStyle(
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
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0,),
                            child: Text(
                              'Quantite',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontFamily: 'fonts/Poppins-SemiBold.ttf',
                                  fontWeight: FontWeight.w500,
                                  color: RexColors.orderTextColor,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0, right: 80.0),
                            child: CupertinoTextField(
                              placeholder: '1',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontFamily: 'fonts/Roboto-Regular.ttf',
                                  fontWeight: FontWeight.w500,
                                  color: RexColors.orderTextColor,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0,),
                            child: Text(
                              'Prix',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontFamily: 'fonts/Poppins-SemiBold.ttf',
                                  fontWeight: FontWeight.w500,
                                  color: RexColors.orderTextColor,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0, right: 44.0),
                            child: CupertinoTextField(
                              placeholder: '5,000',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontFamily: 'fonts/Roboto-Regular.ttf',
                                  fontWeight: FontWeight.w500,
                                  color: RexColors.orderTextColor,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 23.0, right: 43.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    RexColors.ajouterAuPanier),
                                shadowColor: MaterialStateProperty.all(
                                    RexColors.ajouterAuPanierShadow),
                                elevation: MaterialStateProperty.all(12.0),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
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
                                    'AJOUTER AU PANIER',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontFamily: 'fonts/Poppins-Regular.ttf',
                                        fontWeight: FontWeight.w500,
                                        color: RexColors.pageColor,
                                        fontSize: 9.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.46,
                                  ),
                                  Icon(
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
                    SizedBox(
                      width: 30.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 69.0,
          ),
        ],
      ),
      bottomNavigationBar: BaseButton(),
    );
  }
}
