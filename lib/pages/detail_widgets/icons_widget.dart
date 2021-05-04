import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {

  final String text;
  final IconData icon;

  IconsWidget({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Icon(this.icon, color: Colors.white,),
          Text(this.text, style: TextStyle(color: Colors.white),),
          SizedBox(height: 20),

        ],
      
      );
    
  }
}