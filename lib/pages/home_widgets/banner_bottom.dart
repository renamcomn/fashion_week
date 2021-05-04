import 'package:flutter/material.dart';

class BannerBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: Offset(5,10),
            spreadRadius: 3,
            blurRadius: 20
          ),
        ],
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