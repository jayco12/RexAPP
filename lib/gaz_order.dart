import 'package:flutter/material.dart';

class GazOrder extends StatelessWidget {
  GazOrder({required this.icon, required this.name, required this.onPressed});

  final IconData icon;
  final String name;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Icon(icon),
            Text(name),
          ],
        ),
      ),
    );
  }
}