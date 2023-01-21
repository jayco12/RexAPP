import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rex/components/utilities/rex_colors.dart';

class BackArrow extends StatefulWidget {
  const BackArrow({Key? key}) : super(key: key);

  @override
  State<BackArrow> createState() => _BackArrowState();
}

class _BackArrowState extends State<BackArrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 36.77,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkResponse(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: const FaIcon(
              FontAwesomeIcons.leftLong, color: RexColors.textColor, size: 24.0,),
          ),
        ],
      ),
    );
  }
}
