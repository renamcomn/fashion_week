import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios, color: Colors.white, size: 30,
          )
        ),

        SvgPicture.asset('assets/icons/list.svg', height: 25, color: Colors.white,)

      ]
    );
  }
}