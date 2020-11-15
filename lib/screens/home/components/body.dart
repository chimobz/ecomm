import 'package:flutter/material.dart';
import 'package:shop_app/screens/actualit%C3%A9/components/body.dart';
import 'package:shop_app/screens/home/components/categoriesBar.dart';
import 'package:shop_app/screens/home/components/topPromoSlider.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';



class Body extends StatelessWidget {
  //List<Product> demoProducts=[];
// Body(this.demoProducts);

  @override
  Widget build(BuildContext context) {
         var width = MediaQuery.of(context).size.width;
        var widgetWidth = width - 30 ;

    
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
           // DiscountBanner(),
          TopPromoSlider(),
           //PopularMenu(),
           
            Categories(),
           // SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            ListProducts(width,             ),
           /* OpenFlutterProductListView(
              //width: widgetWidth, 
              
             // products: widget.products,
              onFavoritesTap: ( (Product product) => {
                BlocProvider.of<HomeBloc>(context).add(
                  HomeAddToFavoriteEvent(
                    isFavorite: !product.isFavorite,
                    product: product
                  )
                )
              }),
            ),*/
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
      }
       
  
}
