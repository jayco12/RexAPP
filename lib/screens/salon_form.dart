import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/back_arrow.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/screens builder/salon_form_text.dart';
import 'package:rex/components/utilities/submit.dart';
import 'package:rex/components/header&footer/top_bar.dart';
import 'package:rex/components/screens builder/salon_form_field.dart';
import 'package:rex/components/utilities/floating_button.dart';
import 'package:rex/screens/gaz_page.dart';

class SalonForm extends StatefulWidget {
  static const String id = 'salon_form';
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
            Navigator.pushReplacementNamed(context, GazPage.id);
          },
          ),
          const BackArrow(),
          const ChoiceText(),
          Expanded(
            child: ListView(
              children: [
                const SalonFormText(text: 'Temps',),
                const SalonFormField(),
                const SizedBox(height: 5.0,),
                const SalonFormText(text: 'Date'),
                const SalonFormField(),
                const SizedBox(height: 5.0,),
                const SalonFormText(text: 'Lieu'),
                Container(
                  margin: const EdgeInsets.only(left: 53.0, right: 233.0),
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
                              textStyle: kFormStyleRoboto,
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
                const SalonFormText(text: 'Prix'),
                Container(
                  margin: const EdgeInsets.only(left: 53.0, right: 221.0),
                  child: CupertinoTextField(
                    readOnly: true,
                    placeholder: '2,500',
                    style: GoogleFonts.roboto(
                      textStyle: kFormStyleRoboto,
                    ),
                  ),
                ),
                const SizedBox(height: 14.0,),
                const Submit(margin: EdgeInsets.only(left: 53.0, right: 206.0), text: 'SAUVEGARDER',),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const BaseButton(),
    );
  }
}






