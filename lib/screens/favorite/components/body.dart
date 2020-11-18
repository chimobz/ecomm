import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/data/list_fav.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

class Body extends StatefulWidget {
 
  @override
  FavState createState() => FavState();
}

class FavState extends State<Body>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    print(mesFavoris.length);
    return
       mesFavoris.isEmpty 
       ?
      Container(
        height: 550,
        child: Image.asset('assets/images/wish.png'),
      ) 
       :
          Container(
        // padding: EdgeInsets.fromLTRB(10,10,150,10),
        padding: EdgeInsets.all(35),
      //width: 100,
     ///eight: 1000,
       
      child: GridView.count(
        childAspectRatio: 2/2,
          crossAxisCount: 1,
        scrollDirection: Axis.vertical,
        children: 
          mesFavoris
          .map
          ((product) => product.getTileView(context: context, product: product, showProductInfo: (){Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product));} ,
            isFavorite: product.isFavorite
         
          , onFavoritesClick: null)
        
          //ProductCard(product: product,) 
          ).toList(growable:false)),
    );
    
         
       

  
    
    
  
  }


  }