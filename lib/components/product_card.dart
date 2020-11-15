import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
import '../constants.dart';
import '../size_config.dart';
 
 
class ProductCard extends StatelessWidget {
 
  const ProductCard({
    Key key,
    //this.width = 150,
   // this.aspectRetio = 1.02,
    @required this.product,
  //  @required VoidCallback onFavoritesClick
  }) : super(key: key);
 
 // final double width, aspectRetio;
  final Product product;
 // final Function(Product product) onFavoritesClick;
 
   /* Widget _getFavoritesButton(VoidCallback onFavoritesClick) {
    return FloatingActionButton(
     // heroTag: title +
//Random()
       //   .nextInt(1000000)
      //    .toString(), //TODO make sure that there is only one product with specified id on screen and use it as a tag
      mini: true,
      backgroundColor: Colors.white,
      onPressed: onFavoritesClick,
      child: isFavorite
        ? Icon(
            FontAwesomeIcons.solidHeart,
            color: AppColors.red,
            size: 18.0,
          )
        : Icon(
            FontAwesomeIcons.heart,
            color: AppColors.red,
            size: 18.0,
          ),
    );
  }*/
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
       // width: 
        //getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          
          child: GridView.count(
            
            crossAxisCount:2,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
                 AspectRatio(
                aspectRatio: 3/2,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(30)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
           
        
              const SizedBox(height: 10),
             Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  /*FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: (){ !product.isFavourite;},
                    mini: true,
                     child: product.isFavourite
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
                  
                 
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      /*decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),*/
                      child:   FloatingActionButton(
                      heroTag: product.id ,
                    backgroundColor: Colors.white,
                    onPressed: (){
                   !product.isFavorite;
                    print(product.isFavorite);},
                    
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
                      
                    ),
 
 
                      /*SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),*/
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
