import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {

  final String image;
  final EdgeInsets padding;
  final Widget child;
  BackgroundImage({this.image = 'assets/images/milla.jpg', required this.child, this.padding = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: this.padding,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(this.image)
          )
        ),
        child: this.child,
      );
  }
}