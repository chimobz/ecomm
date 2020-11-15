import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/theme.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
      //  Padding(padding: EdgeInsets.only(top:30)),
        ProductImages(product: product),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          product.buildPrice(Theme.of(context),""),
         
            FloatingActionButton(
                      heroTag: product.id,
                    backgroundColor: Colors.white,
                    onPressed: null,//onFavoritesClick,
                    mini: true,
                     child: product.isFavorite
                   ? Icon(
                    FontAwesomeIcons.solidHeart,
                   color: Colors.red,
                    size: 20.0,
                  )
                : Icon(
                   FontAwesomeIcons.heart,
                    color: Colors.red,
                    size: 20.0,
                     ),
                      
                    ),

        ],),
       /* Padding(
          padding: EdgeInsets.only(left:300),
          child:
         
           FloatingActionButton(
                      heroTag: product.id,
                    backgroundColor: Colors.white,
                    onPressed: null,//onFavoritesClick,
                    mini: true,
                     child: product.isFavorite
                   ? Icon(
                    FontAwesomeIcons.solidHeart,
                   color: Colors.red,
                    size: 20.0,
                  )
                : Icon(
                   FontAwesomeIcons.heart,
                    color: Colors.red,
                    size: 20.0,
                     ),
                      
                    ),
          
           ),*/

        TopRoundedContainer(
      
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
            /*  TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ],
    );
  }
}
