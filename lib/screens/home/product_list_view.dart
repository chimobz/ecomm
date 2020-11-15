// List of products in a slider
// Author: openflutterproject@gmail.com
// Date: 2020-02-06
/*
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
//import 'package:openflutterecommerce/config/routes.dart';
//import 'package:openflutterecommerce/config/theme.dart';
//import 'package:openflutterecommerce/data/model/product.dart';
//import 'package:openflutterecommerce/presentation/features/product_details/product_screen.dart';

import '../extensions/product_view.dart';

class OpenFlutterProductListView extends StatelessWidget {
  final double width;
  final double height = 1000;
  
  //final List<Product> products;
  final Function(Product product) onFavoritesTap;

  const OpenFlutterProductListView({
    Key key,
    this.width,
    //this.products,
    @required this.onFavoritesTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  print('product number is ${products.length}');
    return 
    // SingleChildScrollView(
     
  //  child :
       Container(
     // padding: EdgeInsets.only(top: AppSizes.sidePadding),
      width: width,
      height: height,
      child: GridView.count(
        childAspectRatio: 2/2,
          crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: demoProducts
          .map((product) => product.getTileView(
            context: context,
            onFavoritesClick: ( () => {
              onFavoritesTap(product)
            }), 
            showProductInfo: () {
              Navigator.of(context).pushNamed(
                  DetailsScreen.routeName,
                  arguments:  ProductDetailsArguments(product: product)
                    //product.categories.isNotEmpty ? 
                     // product.categories[0].id : 0
                    )
                  );
            },
          )
        ).toList(growable: false)),
    //)
      );
  }
}
*/