import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  Services({required this.onTap, required this.service});

  final Function() onTap;
  final String service;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 60.0,
          ),
        ),
        SizedBox(height: 10.0),
        Text(service),
      ],
    );
  }
}
