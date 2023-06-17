import 'package:flutter/material.dart';
import 'package:rex/components/header_footer/base_button.dart';
import 'package:rex/components/utilities/choice_text.dart';
import 'package:rex/screens/les_autres_articles.dart/articles_page.dart';
import '../../components/utilities/back_arrow.dart';

class Articles extends StatelessWidget {
  final bool addAppbar;
  Articles({
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
          const BackArrow(),
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
                        Card(
                            color: Colors.transparent,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ArticlesForm(
                                        image: 'images/burner.png'),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'images/burner.png',
                                fit: BoxFit.fitWidth,
                                height: 130,
                              ),
                            )),
                        SizedBox(
                          height: 130,
                          width: 130,
                          child: Card(
                              child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ArticlesForm(image: 'images/hose.png'),
                                ),
                              );
                            },
                            child: Image.asset(
                              'images/hose.png',
                              width: 130,
                              height: 130,
                            ),
                          )),
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
