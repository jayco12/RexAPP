import 'package:flutter/material.dart';
import 'package:rex/components/rex_colors.dart';

class SalonOrder extends StatelessWidget {
  const SalonOrder({required this.services, required this.onTap});

  final Image services;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      highlightElevation: 0.0,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 133.0,
        height: 133.0,
      ),
      shape: const CircleBorder(
      ),
      fillColor: RexColors.pageColor,
      onPressed: onTap,
      child: services,
    );
  }
}