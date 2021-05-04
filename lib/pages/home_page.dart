import 'package:fashion_week/pages/home_widgets/banner_bottom.dart';
import 'package:fashion_week/pages/home_widgets/categories.dart';
import 'package:fashion_week/pages/home_widgets/main_title.dart';
import 'package:fashion_week/pages/home_widgets/model_card.dart';
import 'package:fashion_week/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fashion_week/shared/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  SvgPicture.asset('assets/icons/menu.svg', height: 30, color: secondaryColor,),
                  SvgPicture.asset('assets/icons/search.svg', height: 30, color: secondaryColor,),

                ],
              ),
            ),
            SizedBox(height: 40),
            MainTitle(),
            SizedBox(height: 40),
            Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Explore", style: TextStyle(color: secondaryColor, fontSize: 30, fontWeight: FontWeight.w700),),
                    SvgPicture.asset('assets/icons/filter.svg', height: 20, color: secondaryColor,),


                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Categories(title: "Recommended", color: primaryColor,),
                    Categories(title: "New Models"),
                    Categories(title: "2020 Show"),

                  ],
                ),
              ]
            ),
            SizedBox(height: 30),

            SingleChildScrollView(
              child: Column(
                children: [

                  Row(
                    children: [

                      ModelCard(image: 'assets/images/model_1.jpg', name: 'Niketa William', country: 'Paris',),
                      SizedBox(width: 20),
                      ModelCard(image: 'assets/images/model_2.jpg', name: 'Trisha Louis', country: 'London'),

                    ],
                  ),

                  SizedBox(height: 30),
                  BannerBottom()

                ],
              ),
            
            )
            

            
            

          ],
        ),
      ),      
    );
  }
}