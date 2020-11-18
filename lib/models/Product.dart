import 'package:flutter/material.dart';
import 'package:shop_app/components/favorite_widget.dart';
import 'dart:math';
//import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:shop_app/theme.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double discountPercent;
  final DateTime created;
 //final List<Color> colors;
 final int daysleft;
  final double  price;
   bool isFavorite;
  final int dateFin;

  Product({
    this.created,
    this.daysleft,
    this.discountPercent=0,
    this.dateFin,
    @required this.id,
    @required this.images,
   // @required this.colors,
   // this.rating = 0.0,
    this.isFavorite = false,
    //this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });

 // int get timeStamp {
   // Timestamp.fromDate();


  //} 
    bool get hasDiscountPrice => discountPercent > 0;

   // int get dayLeft => (dateFin.day - DateTime.now().day);
   // int get monthLfeft => (dateFin.day - DateTime.now().day);

  double get discountPrice {
    return ((price ?? 0) * (100 - discountPercent) / 100).roundToDouble();
  }
    Widget _getFavoritesButton(VoidCallback onFavoritesClick) {
    return FloatingActionButton(
      heroTag: title +
        Random()
          .nextInt(1000000)
          .toString(), //TODO make sure that there is only one product with specified id on screen and use it as a tag
      mini: true,
      backgroundColor: Colors.white,
      onPressed: onFavoritesClick,
      child: isFavorite
        ? Icon(
            FontAwesomeIcons.solidHeart,
            color: Colors.red,
            size: 18.0,
          )
        : Icon(
            FontAwesomeIcons.heart,
            color: Colors.red,
            size: 18.0,
          ),
    );
  }

   Widget getTileView(
      {@required BuildContext context,
      @required Product product,
      @required VoidCallback showProductInfo,
      @required bool isFavorite,
      @required Function(bool isFavorite) onFavoritesClick}) {
    return BaseProductTile(
     // title: product.title,
        onClick: showProductInfo,
       // bottomRoundButton: _getFavoritesButton(onFavoritesClick),
       
        image: Image.asset(product.images[0]),
        mainContentBuilder: (context) {
          return Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             // buildRating(context),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
               // padding: EdgeInsets.all(15),
            child: Text(title,),// style: Theme.of(context).textTheme.display1),
              ),
              Row(
                
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                   buildPrice(Theme.of(context),"body"),
                   FavoriteWidget(product:product, onFavoritesClick: onFavoritesClick, isFavorite: isFavorite),
                   
                   /* FloatingActionButton(
                      heroTag: product.id,
                    backgroundColor: Colors.white,
                    onPressed: onFavoritesClick,
                    mini: true,
                     child: product.isFavorite
                   ? Icon(
                    FontAwesomeIcons.solidHeart,
                   color: Colors.red,
                    size: 18.0,
                  )
                : Icon(
                   FontAwesomeIcons.heart,
                    color: Colors.red,
                    size: 18.0,
                     ),
                      
                    ),*/

                ]
              ),
             
           
       
               
              
              Row(
                children: <Widget>[
                 // buildPrice(Theme.of(context)),
                  
                ],
              ),
             // Padding(padding: EdgeInsets.only(left:25),)
            ],
            
          );
        },
        specialMark: specialMark
        );
  }
 // bool get isNew => created.difference(DateTime.now()).inDays < 3;

  String get specialMark {
    if (discountPercent > 0) {
      return '-' + discountPercent.round().toString() + '%';
   // } else if (isNew) {
   //   return 'New';
    } else {
      return null;
    }
  }


    Widget buildPrice(ThemeData _theme,String tag) {

    return Row(
     // mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
      tag=="body" ?
      Text(
       
        price != null ?  price.toStringAsFixed(0) +' TND' : '',
        
        style: _theme.textTheme.bodyText1.copyWith(
          decoration:
          hasDiscountPrice
             ? TextDecoration.lineThrough
              : TextDecoration.none,
       ),
     
      
      )
      :
      Text(
       
        price != null ?  price.toStringAsFixed(0)+' TND' : '',
        
        style: _theme.textTheme.headline5.copyWith(
          decoration:
          hasDiscountPrice
             ? TextDecoration.lineThrough
              : TextDecoration.none,
       ),
     
      
      ),
      SizedBox(
        width: 14.0,
      ),
      
      hasDiscountPrice ? buildDiscountPrice(_theme,tag) : Container(),
    ]);
  }
   Widget buildDiscountPrice(ThemeData _theme,String tag) {
    return
    
    tag=="body" ?
   
     Text( discountPrice.toStringAsFixed(0)+ ' TND',
    //style: TextStyle(color: Colors.red),);
        style: _theme.textTheme.bodyText1.copyWith(color: _theme.accentColor)
        
        )
        :
           Text( discountPrice.toStringAsFixed(0)+' TND',
    //style: TextStyle(color: Colors.red),);
        style: _theme.textTheme.headline4.copyWith(color: _theme.errorColor)
        
        );
      

  }



    Product favorite(bool isFavourite) {
    return Product(
        id :id,
        images: images,
        isFavorite: isFavourite??false,
       // isPopular:isPopular,
        title: title,
        price: price,
        description: description,
       
       
    
        
        );
  }
}


class BaseProductTile extends StatelessWidget {
  final VoidCallback onClick;
  final String inactiveMessage;
  final Widget bottomRoundButton;
  final Image image;
  final WidgetBuilder mainContentBuilder;
  final String specialMark;
 // final String title;
  final VoidCallback onRemove;
  final double imageHeight;
  final double imageWidth;
  final double tileHeight;

  const BaseProductTile(
      {Key key,
      this.onClick,
      this.inactiveMessage,
      this.bottomRoundButton,
      this.image,
      //this.title,
      this.mainContentBuilder,
      this.imageHeight = 294,
      this.imageWidth = 158.0,
      this.tileHeight = 276.0,
      this.specialMark,
      this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageWidth ,//+ 20,
    //  height: tileHeight,
      //padding: EdgeInsets.symmetric(horizontal: AppSizes.widgetSidePadding / 2),
      child: Opacity(
        opacity: inactiveMessage == null ? 1 : 0.6,
        child: Stack(
          children: <Widget>[
         

            InkWell(
              onTap: onClick,
              
              child: Column(
                
                children: <Widget>[
                  Expanded(
                    child:  AspectRatio(
                aspectRatio: 3/2,
                child: Container(
                  padding: EdgeInsets.all((12)),
                  decoration: BoxDecoration(
                  //  color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:image,
                   //Hero(
                    //tag: product.id.toString(),
                   // child: Image.asset(product.images[0]),
                  ),
                  
                ),
              ),

                Padding(
                   // padding: EdgeInsets.all(4),
                   padding: EdgeInsets.only(bottom:15,left: 15),
                    child: mainContentBuilder(context),
                  ),
                  
              //Text(title),
             
             
              
              
                   /* child:  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: imageWidth,
                      height: imageHeight,
                      decoration: BoxDecoration(
                         //color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                        
                        // DecorationImage(image: image, fit: BoxFit.cover),
                       // color: AppColors.background,
                        //borderRadius:
                        //    BorderRadius.circular(8),
                      ),
                      child: image,
                    ),
                  ),*/
                //  ),
                 
                /* Padding(
                   // padding: EdgeInsets.all(4),
                   padding: EdgeInsets.only(bottom:15,left: 15),
                    child: mainContentBuilder(context),
                  ),*/
              
                 
                  
                  //inactiveMessage == null ? Container() : Text(inactiveMessage),
                ],
              ),
            ),
           
              /*  bottomRoundButton == null
              ? Container()
              : Positioned(
                  top: imageHeight - 50,
                  right: 0,
                  child: bottomRoundButton,
                ),
        */
      
            specialMark == null
              ? Container()
              : Positioned(
                left: 8,
                top: 6,
                child: Container(
                  padding: EdgeInsets.all(4 ),
                  decoration: BoxDecoration(
                    borderRadius:
                      BorderRadius.circular(8),
                    color: specialMark == 'New'
                      ? Colors.red
                      : Colors.black,
                  ),
                  child: Text(specialMark,
                    style: Theme.of(context).textTheme.body1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)
                      )
                      ),
                ),
            /*onRemove == null
              ? Container()
              : Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(Icons.close),
                   // color: AppColors.lightGray,
                    onPressed: onRemove,
                  ),
                )*/
          ],
        ),
      ),
    );
  }
}