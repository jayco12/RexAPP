import 'package:flutter/material.dart';

class Base extends StatelessWidget {
  const Base(
      {Key? key,
        required this.margin,
        required this.image,
        required this.onTap})
      : super(key: key);

  final String image;
  final void Function()? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: InkResponse(
        onTap: onTap,
        child: ImageIcon(
          AssetImage(image),
          size: 30.0,
        ),
      ),
    );
  }
}