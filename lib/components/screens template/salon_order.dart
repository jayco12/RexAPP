import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rex/components/utilities/rex_colors.dart';

class SalonOrder extends StatelessWidget {
  const SalonOrder({Key? key, required this.services}) : super(key: key);

  final Image services;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      highlightElevation: 0.0,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 133.0,
        height: 133.0,
      ),
      shape: const CircleBorder(),
      fillColor: RexColors.pageColor,
      onPressed: () {
        context.router.pushNamed('/salon-form');
      },
      child: services,
    );
  }
}
