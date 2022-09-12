import 'package:flutter/material.dart';
import 'package:rex/components/rex_colors.dart';

class GazOrder extends StatelessWidget {
  const GazOrder({required this.cylinders, required this.onTap});

  final Image cylinders;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      highlightElevation: 0.0,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 80.0,
        height: 80.0,
      ),
      shape: const CircleBorder(
      ),
      fillColor: RexColors.pageColor,
      onPressed: onTap,
      child: cylinders,
    );
  }
}

