import 'package:flutter/material.dart';

class GradientBackGround extends StatelessWidget {

  final Widget child;
  final EdgeInsets padding;
  GradientBackGround({required this.child, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: this.padding,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff749ed5),
              Color(0xff7f4578)
            ]
          )
        ),
        child: this.child,
      );
  }
}