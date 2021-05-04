import 'package:fashion_week/pages/detail_page.dart';
import 'package:fashion_week/shared/colors.dart';
import 'package:flutter/material.dart';

class ModelCard extends StatelessWidget {

  final String image;
  final String name;
  final String country;

  ModelCard({required this.image, required this.name, required this.country});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1/1.5,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
              },
                child: Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withOpacity(0.4),
                      offset: Offset(5,10),
                      spreadRadius: 3,
                      blurRadius: 20
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(this.image)
                  )
                ),
              ),
            ),
          ),
          Text(this.name, style: TextStyle(fontWeight: FontWeight.w600),),
          Text(this.country)
        ],
      ),
    );
  }
}