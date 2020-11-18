import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/favorite_widget.dart';
import 'package:shop_app/data/favoris.dart';
import 'package:shop_app/data/list_fav.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/grid.dart';
import 'package:shop_app/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/theme.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';
import 'package:shop_app/screens/home/components/grid.dart';


class Body extends StatefulWidget {
  // Body({Key key}) : super(key: key);
  final Product product;

   Body({Key key, @required this.product}) : super(key: key);
   
  FavoriteProduct favorites = FavoriteProduct();
   updateFavorite(Product photo, bool isFavorite) {
    if (isFavorite) {
      favorites.addFavorite(photo);
    } else {
      favorites.removeFavorite(photo);
    }
    print(mesFavoris.length);
    //print(favorites..length);
  }
   @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>   {

  @override
   Widget build(BuildContext context) {
     return ListView(
      scrollDirection: Axis.vertical,
       children: [
       //  Padding(padding: EdgeInsets.only(top:30)),
       ProductImages(product: widget.product),
      
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
           widget.product.buildPrice(Theme.of(context),""),
           FavoriteWidget(
            isFavorite: 
          widget.product.isFavorite,
           product: widget.product,
          
           onFavoritesClick:  (isFavorite) {
                        setState((){
                           GridMainPage().updateFavorite(widget.product, widget.product.isFavorite);
                        });
                       },
                       ),
          
      
         
           
        /* FloatingActionButton(

                       heroTag: widget.product.id,
                     backgroundColor: Colors.white,
                     onPressed: null,//onFavoritesClick,
                     mini: true,
                      child: widget.product.isFavorite
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
                      
                     ),*/
                    



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
                 product: widget.product,
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
                         ),                        child: DefaultButton(
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
