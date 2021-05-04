import 'package:fashion_week/shared/colors.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text("Fashion Week", style: TextStyle(color: primaryColor, fontSize: 30, fontWeight: FontWeight.w700)),
        Text("2021 Fashion show in Paris", style: TextStyle(color: secondaryColor, fontSize: 14))

      ],
    );
  }
}