import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/back_arrow.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/utilities/submit.dart';
import 'package:rex/components/screens builder/gas_form_field.dart';
import 'package:rex/components/header&footer/top_bar.dart';
import 'package:rex/components/screens builder/gas_form_text.dart';
import 'package:rex/components/utilities/floating_button.dart';
import 'package:rex/screens/salon_page.dart';
import 'package:rex/components/utilities/gaz_class.dart';

class GazForm extends StatefulWidget {
  const GazForm({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  State<GazForm> createState() => _GazFormState();
}

class _GazFormState extends State<GazForm> {
  String dropdownValue = '6KG';

  DropdownButton<String> dropDown() {
    List<DropdownMenuItem<String>> dropDownItems = [];

    for (String kg in gasKg) {
      var newMenu = DropdownMenuItem(
        value: kg,
        child: Text(
          kg,
          style: GoogleFonts.roboto(
            textStyle: kFormStyleRoboto,
          ),
        ),
      );

      dropDownItems.add(newMenu);
    }

    return DropdownButton<String>(
        value: dropdownValue,
        items: dropDownItems,
        onChanged: (value) {
          setState(() {
            dropdownValue = value.toString();
            seekKg();
          });
        });
  }

  Map<String, String> gasValues = {};

  void seekKg() {
    try {
      var gas = GazClass().getKg(dropdownValue);
      setState(() {
        gasValues = gas;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    seekKg();
  }

  String getPrice() {
    List<Gas> gazPrice = [];
    for (String amount in gasPrice) {
      //print(amount);
      if(dropdownValue == gasKg[0]){
        return gasPrice[0];
      }
      else if(dropdownValue == gasKg[1]){
        return gasPrice[1];
      }
      gazPrice.add(
        Gas(
          dropdownValue: dropdownValue,
          value: gasValues[amount].toString(),
        ),

      );
    }
    return gazPrice.toString();
  }

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
            button: Image.asset('images/Salon.png'),
            onTap: () {
              Navigator.pushReplacementNamed(context, SalonPage.id);
            },
          ),
          const BackArrow(),
          const ChoiceText(),
          Expanded(
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 26.0,
                    ),
                    Image.asset(
                      widget.image,
                      gaplessPlayback: true,
                      width: 105.5,
                      height: 106.35,
                    ),
                    const SizedBox(
                      width: 9.5,
                    ),
                    Container(
                      decoration: kGasFormDecoration,
                      width: 204.0,
                      height: 304.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const GasFormText(
                            margin: EdgeInsets.only(left: 20.0, top: 25.0),
                            text: 'Taille',
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 80.0),
                            child: dropDown(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const GasFormText(
                              margin: EdgeInsets.only(
                                left: 20.0,
                              ),
                              text: 'Quantite'),
                          const GazFormField(
                            margin: EdgeInsets.only(
                              left: 20.0,
                              right: 80.0,
                            ),
                            enabled: true,
                            text: '1',
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const GasFormText(
                              margin: EdgeInsets.only(
                                left: 20.0,
                              ),
                              text: 'Prix'),
                          GazFormField(
                            enabled: false,
                            margin: EdgeInsets.only(left: 20.0, right: 44.0),
                            text: getPrice(),
                          ), //'5,000'
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Submit(
                              margin: EdgeInsets.only(left: 19.0, right: 41.1),
                              text: 'AJOUTER AU PANIER'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 69.0,
          ),
        ],
      ),
      // bottomNavigationBar: const BaseButton(),
    );
  }
}

class Gas extends StatelessWidget {
  const Gas({
    Key? key,
    required this.dropdownValue,
    required this.value,
  }) : super(key: key);

  final String dropdownValue;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
