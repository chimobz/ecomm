
import 'package:flutter/material.dart';
import 'package:shop_app/data/favoris.dart';
import 'package:shop_app/models/Product.dart';

import 'package:shop_app/data/favoris.dart';
import 'package:shop_app/data/list_fav.dart';
import 'package:shop_app/models/Product.dart';
//import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/data/list_fav.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import 'package:shop_app/data/products.dart';

class GridMainPage extends StatefulWidget {
  GridMainPage({Key key}) : super(key: key);
 
  FavoriteProduct favorites = FavoriteProduct();
 
  updateFavorite(Product photo, bool isFavorite) {
    if (isFavorite) {
      favorites.addFavorite(photo);
    } else {
      favorites.removeFavorite(photo);
    }
    print(mesFavoris.length);
  }
 
  @override
  _GridMainPageState createState() => _GridMainPageState();
}

 /*  createState() {
      _GridMainPageState();
     
      
      }
      }*/



class _GridMainPageState extends State<GridMainPage>{


  @override
  Widget build (BuildContext context){
    return  GridView.count(
        childAspectRatio: 2/2,
          crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: 
          demoProducts
          .map
          ((product) => product.getTileView(
            context: context, product: product, 
            showProductInfo: (){Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product));} ,
            isFavorite: widget.favorites.isFavorite(product)
         
          , onFavoritesClick:  (isFavorite) {
                        setState((){
                          widget.updateFavorite(product, isFavorite);
                        });
                      }
          
          )
        
          //ProductCard(product: product,) 
          ).toList(growable:false));

  }

}



