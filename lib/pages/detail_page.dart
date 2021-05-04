import 'package:fashion_week/pages/detail_widgets/background_image.dart';
import 'package:fashion_week/pages/detail_widgets/box_detail_widget.dart';
import 'package:fashion_week/pages/detail_widgets/icons_widget.dart';
import 'package:fashion_week/pages/detail_widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String image;
  DetailPage({this.image = 'assets/images/milla.jpg'});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        image: this.image,
        padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            NavBarWidget(),

            Container(
              margin: EdgeInsets.symmetric(vertical: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  IconsWidget(text: '1', icon: Icons.message),
                  IconsWidget(text: '579', icon: Icons.favorite_border_outlined),
                  IconsWidget(text: '18', icon: Icons.access_time_outlined),

                ],
              
              ),
            ),

            BoxDetailWidget()

          ],
        ),
      ),
    );
  }
}