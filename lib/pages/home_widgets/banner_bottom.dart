import 'package:flutter/material.dart';

class BannerBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.red,
          image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/bottom_banner.jpg')
        )
      ),
    );
  }
}