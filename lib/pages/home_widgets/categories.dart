import 'package:fashion_week/shared/colors.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {

  final String title;
  final Color color;

  Categories({required this.title, this.color = secondaryColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {

      }, 
      child: Text(this.title, style: TextStyle(color: this.color),)
    );
  }
}