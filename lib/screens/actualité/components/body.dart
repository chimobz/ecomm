import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/categoriesBar.dart';
import 'package:shop_app/screens/home/components/discount_banner.dart';

import 'package:shop_app/data/products.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/components/popular_product.dart';
import 'package:shop_app/screens/home/components/topPromoSlider.dart';
//import 'package:shop_app/components/product_card.dart';
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

     return ListView(
      
        // crossAxisCount: 2,
         children: [
           //DiscountBanner(),
          TopPromoSlider(),
           //ListProducts(10),
            Container(
         padding: EdgeInsets.only(top: 50),
      width: 100,
     height: 1000,
       
      child: GridView.count(
        childAspectRatio: 2/2,
          crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: 
          demoProducts
          .map
          ((product) => product.getTileView(context: context, product: product, showProductInfo: (){Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product));} 
         
          , onFavoritesClick: null)
        
          //ProductCard(product: product,) 
          ).toList(growable:false)),
    )
         /*  Container(child: 
           GridView.count(
        childAspectRatio: 2/2,
          crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: 
          demoProducts
          .map
          ((product) => product.getTileView(context: context, product: product, showProductInfo: (){Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product));} 
         
          , onFavoritesClick: null)
        
          //ProductCard(product: product,) 
          ).toList(growable:false)),
                  
           ),*/

       
                  

              
               // },
              
         ],
         );
     
  
       

   //  );
    
    
  
  }


  }
