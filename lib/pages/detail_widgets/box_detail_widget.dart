import 'package:fashion_week/shared/colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class BoxDetailWidget extends StatelessWidget {

  double _opacity = 0.3;

  @override
  Widget build(BuildContext context) {
    return buildBlur(
          child: Container(
        height: 220,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white.withOpacity(_opacity),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Milla Jovovich", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),),
              SizedBox(height: 20),
              Text("Milica Bogdanovna Milla Jovovich, é uma atriz, modelo, designer de moda e cantora norte-americana natural da Ucrânia, na época de seu nascimento ainda sob domínio da União Soviética.", style: TextStyle(color: Colors.white, height: 1.5),),
              Align(
                alignment: Alignment.bottomRight,
                  child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Text("Follow", style: TextStyle(color: Colors.white),),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.add, color: secondaryColor, size: 14,),
                      )
                      

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        
      ),
    );
  }

Widget buildBlur({
    required Widget child,
    double sigmaX = 10,
    double sigmaY = 10,
  }) =>
      ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );
  
}