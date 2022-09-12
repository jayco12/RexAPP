import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({required this.button, required this.onTap});

  final Image button;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 320.0,),
      child: RawMaterialButton(
        elevation: 6.0,
        constraints: const BoxConstraints.tightFor(
          width: 40.0,
          height: 40.0,
        ),
        shape: const CircleBorder(),
        onPressed: onTap,
        child: button,
      ),
    );
  }
}