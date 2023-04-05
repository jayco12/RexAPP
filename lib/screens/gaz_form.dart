import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rex/components/utilities/back_arrow.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/utilities/submit.dart';
import 'package:rex/components/screens template/gas_form_field.dart';
import 'package:rex/components/header_footer/top_bar.dart';
import 'package:rex/components/screens template/gas_form_text.dart';
import 'package:rex/components/utilities/floating_button.dart';
import 'package:rex/components/utilities/gaz_class.dart';
import 'package:provider/provider.dart';

import 'cart_screen/cart_data.dart';


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
      //print(e);
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
      if (dropdownValue == gasKg[0]) {
        var gasOne = int.parse(gasPrice[0]) * quantite;
        print(gasOne);
        return gasOne.toString();
      } else if (dropdownValue == gasKg[1]) {
        var gasTwo = int.parse(gasPrice[1]) * quantite;
        print(gasTwo);
        return gasTwo.toString();
      }
      gazPrice.add(
        Gas(
          dropdownValue: dropdownValue,
          value: gasValues[amount].toString(),
        ),
      );
    }
    return getPrice();
  }

  late int quantite = 1;
  late String? newCart;

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
            child: const Icon(Icons.group_rounded),
          ),
        ),
      ),
      body: Column(
        children: [
          FloatingButton(
            button: Image.asset('images/Salon.png'),
            onTap: () {
              context.router.replaceNamed('/salon-page');
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
                          GazFormField(
                            margin: const EdgeInsets.only(
                              left: 20.0,
                              right: 80.0,
                            ),
                            enabled: true,
                            text: '1',
                            onChanged: (context) {
                              setState(() {
                                quantite = int.parse(context);
                                newCart = context;
                              });
                              print(quantite);
                            },
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const GasFormText(
                            margin: EdgeInsets.only(
                              left: 20.0,
                            ),
                            text: 'Prix',
                          ),
                          GazFormField(
                            enabled: false,
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 44.0),
                            text: getPrice(),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Submit(
                            onPressed: () {
                              Provider.of<CartData>(context, listen: false).addCart(newCart!);
                              Navigator.pop(context);
                            },
                              margin: const EdgeInsets.only(left: 19.0, right: 41.1),
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
