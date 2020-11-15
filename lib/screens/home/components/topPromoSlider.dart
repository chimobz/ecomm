import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class TopPromoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: EdgeInsets.all(1),
      child: Container(
          height: 170.0,
          //width: 600,
         // width:double.infinity,
          child: Carousel(
           // boxFit: BoxFit.fill,
            images: [
              // Image.asset(
              //   "assets/images/splash_3.png",
              //   // height: 150,
              //   // width: double.infinity,
              // ),
              Image.asset(
                "assets/images/pro2.jpg",
               
                //double.infinity,
              ),
              // Image.asset(
              //   "assets/images/splash_3.png",
              //   height: 150,
              //   width: double.infinity,
              // ),
              Image.asset("assets/images/pro1.jpg"),
            
              // height: double.infinity,width: double.infinity,),
             Image.asset("assets/images/pro3.jpg",height: double.infinity,width: double.infinity,),
            ],
            dotSize: 5.0,
            dotSpacing: 15.0,
            dotColor: Colors.black.withOpacity(0.3),
            indicatorBgPadding: 1.0,
            dotIncreasedColor: Colors.red,
            dotBgColor: Colors.white,
           //  Colors.black54.withOpacity(0.1),
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
           noRadiusForIndicator: true,
          )),
    );
  }
}
