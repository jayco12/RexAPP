import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/header_footer/base_button.dart';
import 'package:rex/components/utilities/choice_text.dart';

import 'Artcles.dart';
import 'Camera_page.dart';

class LesAutres extends StatelessWidget {
  final bool addAppbar;
  LesAutres({
    Key? key,
    required this.addAppbar,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: addAppbar
          ? buildAppBar(context)
          : buildAppBar(context, emptyAppBar: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ChoiceText(),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 130,
                          width: 130,
                          child: Card(
                              child: ElevatedButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white),
                                  ),
                                  onPressed: () async {
                                    await availableCameras().then((value) =>
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => CameraPage(
                                                    cameras: value))));
                                  },
                                  child: const Text('Les Autres',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.orange)))),
                        ),
                        SizedBox(
                          height: 130,
                          width: 130,
                          child: Card(
                              child: ElevatedButton(
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Articles(
                                          addAppbar: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text('Autres Articles',
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.orange)))),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],

        //bottomNavigationBar: BaseButton(),
      ),
    );
  }
}
