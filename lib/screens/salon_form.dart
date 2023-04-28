import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/back_arrow.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/screens template/salon_form_text.dart';
import 'package:rex/components/utilities/submit.dart';
import 'package:rex/components/header_footer/top_bar.dart';
import 'package:rex/components/screens template/salon_form_field.dart';
import 'package:rex/components/utilities/floating_button.dart';

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
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: TopBar(
          phonenavigator: InkResponse(
            onTap: () {
              context.router.pushNamed('/our-contact');
            },
            child: const Icon(Icons.phone),
          ),
          infonavigator: InkResponse(
            onTap: () {
              //widget.infonavigator;
            },
            child: const Icon(Icons.info_outline_rounded),
          ),
          aboutnavigator: InkResponse(
              onTap: () {
                context.router.pushNamed('/about-us');
              },
              child: const Icon(Icons.group_rounded)),
        ),
      ),
      body: Column(
        children: [
          FloatingButton(
            button: Image.asset('images/Gaz.png'),
            onTap: () {
              context.router.replaceNamed('/gaz-page');
            },
          ),
          const BackArrow(),
          const ChoiceText(),
          Expanded(
            child: ListView(
              children: [
                const SalonFormText(
                  text: 'Temps',
                ),
                const SalonFormField(),
                const SizedBox(
                  height: 5.0,
                ),
                const SalonFormText(text: 'Date'),
                const SalonFormField(),
                const SizedBox(
                  height: 5.0,
                ),
                const SalonFormText(text: 'Lieu'),
                Container(
                  margin: const EdgeInsets.only(left: 33.0, right: 233.0),
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
                const SizedBox(
                  height: 5.0,
                ),
                const SalonFormText(text: 'Prix'),
                Container(
                  margin: const EdgeInsets.only(left: 33.0, right: 221.0),
                  child: CupertinoTextField(
                    readOnly: true,
                    placeholder: '2,500',
                    style: GoogleFonts.roboto(
                      textStyle: kFormStyleRoboto,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Submit(
                  margin: EdgeInsets.only(left: 33.0, right: 206.0),
                  text: 'SAUVEGARDER',
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (context) {
                          Future.delayed(const Duration(seconds: 1), () {
                            Navigator.of(context).pop(true);
                          });
                          return const AlertDialog(
                            backgroundColor: Colors.transparent,
                            icon: Icon(
                              Icons.check_circle_rounded,
                              color: Colors.green,
                              size: 100,
                            ),
                          );
                        });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const BaseButton(),
    );
  }
}
