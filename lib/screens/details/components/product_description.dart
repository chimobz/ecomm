import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import 'package:shop_app/components/rounded_image.dart';
import 'package:shop_app/components/time.dart';
import 'package:shop_app/models/Product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;
 

  @override
  Widget build(BuildContext context) {
    int endTime =//1639511732;
    DateTime.now().millisecondsSinceEpoch + 2000254550 * 60;
    return 
    //ListView(
     // height: 1000,
     // scrollDirection: Axis.vertical,
      
       
     Column(
     // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           /*CountdownTimer(
            endTime: endTime,
            textStyle: TextStyle(fontSize: 30, color: Colors.pink),
          ),*/
          CountdownTimer(
            endTime: endTime,
            widgetBuilder: (_, CurrentRemainingTime time) {
              if(time == null) {
                return Text('Date expirée');
              }
              return Text(
                  '  ${time.days} jrs , ${time.hours} h,  ${time.min} min ,  ${time.sec} sec ',style: TextStyle(fontSize:20,color: Colors.redAccent ),);
            },
          ),

        ],),

        //favorite
       // Padding(
         
         
        /* Container(
          padding:
              EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              


            Text(
            "Jours restants  : ",
            style: TextStyle(color: Colors.black, fontSize: 15)
          ),
          */




       /*   Container(
            width:60,
            height: 40,
              decoration: BoxDecoration(
                    borderRadius:
                      BorderRadius.circular(28),
                    color: Colors.black,
                  ),
                  child:  Center(child: Text("- "+
            product.daysleft.toString()+" j",
            style: Theme.of(context).textTheme.body1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
            //style: Theme.of(context).textTheme.headline6,
          ),
           
          ),)  ,
          )*/
        

         //   ]
         // ),
          
         
      //  ),

         /*Padding(
          padding:EdgeInsets.all(10),
             // EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            children: [

            Text(
            "Date de fin : ",style: TextStyle(color: Colors.black, fontSize: 15)
            //style: Theme.of(context).textTheme.headline6,
          ),
            Text(
            product.title,
            //style: Theme.of(context).textTheme.headline6,
          ),

            ]
          )
          
         
        ),*/

        /* Padding(
          padding:EdgeInsets.fromLTRB(0, 10, 240, 10),
             // EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
       

            child :Text(
            "Descriptions : ",
            style: Theme.of(context).textTheme.headline6,
          ),
      
          
         
        ),*/

          Container (
          padding:EdgeInsets.all(15),
             // EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
       

            child :Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 250, 10),
              child:    Text(
            "Détails : ", style: TextStyle(color: Colors.black),
            //style: Theme.of(context).textTheme.headline6,
          ),
              
          ),

                 Padding(padding: EdgeInsets.only(left:20),
              child:      Text(
            product.description,
            maxLines: 5,
          ),
              
          ),

              Padding(
                padding: //EdgeInsets.only(left:5),
              
               EdgeInsets.fromLTRB(0, 10, 250, 10),
              child:    Text(
            "Contact  : ", style: TextStyle(color: Colors.black),
            //style: Theme.of(context).textTheme.headline6,
          ),
              
          ),

                 Padding(padding: EdgeInsets.only(left:20),
              child:      Text(
            product.description,
            maxLines: 3,
          ),
              
          ),
              Padding(padding: EdgeInsets.only(top:15)),
         
     
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

             RoundedImage(icon: 'assets/images/fb.png',press: () {Navigator.pushNamed(context, Times.routeName);}),
             RoundedImage(icon: 'assets/images/map.png',press: (){},),

          ],)

         
        


            ],
            
            
            )
        
      
          
         
        ),
       /* Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color:
                  product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color:
                  product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
              height: getProportionateScreenWidth(16),
            ),
          ),
        ),*/
        /*Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
            Padding(
          padding: EdgeInsets.only( top:10,
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),*/
        /*Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                /*Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),*/
                // SizedBox(width: 5),
                // Icon(
                //   Icons.arrow_forward_ios,
                //   size: 12,
                //   color: kPrimaryColor,
                // ),
              ],
            ),
          ),
        )*/
      ],
    // ),
    );
  }
}
