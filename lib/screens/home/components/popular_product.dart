import 'package:flutter/material.dart';
//import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import 'package:shop_app/data/products.dart';

class ListProducts extends StatelessWidget {
   final double width;
   final double height = 1000;
    //final Function(Product product) onFavoritesTap;
   
   ListProducts(this.width, );
  @override
  Widget build(BuildContext context) {
    
    return 
    Container(
         padding: EdgeInsets.only(top: 15),
      width: width,
     height: height,
       
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
    );
        

    
    
    /*Column(
      
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Nos offres  ", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
     

        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
             // SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    )*/
  }
}
