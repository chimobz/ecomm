import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/rounded_image.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"image": "assets/images/categories/basket.png", "text": "Electro"},
      {"image": "assets/images/categories/cuisine.png", "text": "Auto"},
      {"image": "assets/images/categories/basket.png", "text": "Sport"},
      
      {"image": "assets/images/categories/montre.png", "text": "Clothes"},
      {"image": "assets/images/categories/clothes.jpg", "text": "More"},
      {"image": "assets/images/categories/basket.png", "text": "Sport"},
      
      {"image": "assets/images/categories/montre.png", "text": "Clothes"},
      {"image": "assets/images/categories/clothes.jpg", "text": "More"},
    ];
    return  Container(
      height: 250,
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.75,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2
              ),
          itemBuilder: (context, index) {
            return CategoryCard(
            image: categories[index]["image"],
            text: categories[index]["text"],
            press: () {},
          );
          }
          )
    );
   
   
   
   /* Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: GridView.count(
        crossAxisCount: 5,
      children: List.generate(
          categories.length,
          (index) => CategoryCard(
            image: categories[index]["image"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),

      
      ),
      /*child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            image: categories[index]["image"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),*/
    );*/
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.image,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(60),
        child: Column(
          children: [
            Container(
            //  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            height: getProportionateScreenWidth(80),
           //   width: getProportionateScreenWidth(60),
           //  decoration: BoxDecoration(
               // color: Color(0xFFFFECDF),
               //color: Colors.grey,
               // borderRadius: BorderRadius.circular(20),
                //shape: BoxShape.circle,
             // ),
             child:
               RoundedImage(icon: image,),
              //Image.asset(image,height: 280,width: 180,scale: 2.5,),
            ),
            SizedBox(height: 2),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
