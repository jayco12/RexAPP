import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rex/components/utilities/back_arrow.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/components/utilities/constants.dart';
import 'package:rex/components/utilities/submit.dart';
import 'package:rex/components/screens template/gas_form_field.dart';
import 'package:rex/components/screens template/gas_form_text.dart';
import 'package:rex/components/utilities/gaz_class.dart';

import '../cart_screen/models/Gaz.dart';
import '../gaz_form.dart';

class LesAutresForm extends StatefulWidget {
  const LesAutresForm({
    Key? key,
    required this.image,
  }) : super(key: key);
  final XFile image;
  @override
  State<LesAutresForm> createState() => _LesAutresFormState();
}

class _LesAutresFormState extends State<LesAutresForm> {
  int Price() {
    for (String amount in gasPrice) {
      var gasOne = int.parse(ArticlesPrice[0]) * quantite;
      print(gasOne);
      return gasOne;
    }

    return Price();
  }

  int quantite = 1;
  final _formKey = GlobalKey<FormState>();
  final imageController = TextEditingController();
  final qualityController = TextEditingController();
  final priceController = TextEditingController();
  late final Box box;
  _addInfo() async {
    Gaz newGaz =
        Gaz(image: widget.image, quantity: quantite.toString(), price: Price());
    box.add(newGaz);
    print('Info added to box!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size(double.infinity, 120),
      //   child: TopBar(
      //     phonenavigator: InkResponse(
      //       onTap: () {
      //         context.router.pushNamed('/our-contact');
      //       },
      //       child: const Icon(Icons.phone),
      //     ),
      //     infonavigator: InkResponse(
      //       onTap: () {
      //         //widget.infonavigator;
      //       },
      //       child: const Icon(Icons.info_outline_rounded),
      //     ),
      //     aboutnavigator: InkResponse(
      //       onTap: () {
      //         context.router.pushNamed('/about-us');
      //       },
      //       child: const Icon(Icons.group_rounded),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(children: [
          const BackArrow(),
          const ChoiceText(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                width: 16.0,
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.file(File(
                  widget.image.path,
                )),
              ),
              const SizedBox(
                width: 4.5,
              ),
              Card(
                elevation: 4.0,
                child: Container(
                  decoration: kGasFormDecoration,
                  width: 150.0,
                  height: 260.0,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      GasFormText(
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        text: 'Quantite',
                        enabled: false,
                      ),
                      GazFormField(
                        controller: qualityController,
                        onChanged: (_) {
                          setState(() {
                            quantite = int.parse(qualityController.text);
                          });
                          print(quantite);
                        },
                        margin: const EdgeInsets.only(
                          left: 20.0,
                          right: 80.0,
                        ),
                        enabled: true,
                        text: '1',
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      GasFormText(
                        margin: const EdgeInsets.only(
                          right: 20.0,
                          left: 20.0,
                        ),
                        text: 'Prix',
                        enabled: false,
                      ),
                      GasFormText(
                        controller: priceController,
                        text: (Price()).toString(),
                        margin: const EdgeInsets.only(left: 20.0, right: 44.0),
                        enabled: false,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Submit(
                          onPressed: () async {
                            _addInfo();
                            showDialog(
                                context: context,
                                builder: (context) {
                                  Future.delayed(const Duration(seconds: 1),
                                      () {
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
                            priceController.clear();
                            qualityController.clear();
                          },
                          margin:
                              const EdgeInsets.only(left: 19.0, right: 41.1),
                          text: 'AJOUTER AU PANIER'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
            ]),
          ),
          const SizedBox(
            width: 69.0,
          ),
        ]
            // }
            ),
      ),
    );
  }
}

const List<String> ArticlesPrice = ['600'];

class ArticlesClass {
  Map<String, String> getKg(String dropdownValue) {
    Map<String, String> price = {};

    for (String amount in gasPrice) {
      price = {'price': amount};
    }
    return price;
  }
}
