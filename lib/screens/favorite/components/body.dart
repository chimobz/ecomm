import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/Product.dart';

class Body extends StatefulWidget {
 
  @override
  FavState createState() => FavState();
}

class FavState extends State<Body>
    with SingleTickerProviderStateMixin {
 List<Product> favoris=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context){

     return Container(
     
        child:favoris.isEmpty 
       ?
      Container(
        height: 550,
        child: Image.asset('assets/images/wish.png'),
      ) 
       :
       Container(
         alignment: Alignment.center,
         child: Text(""),)
       

     );
    
    
  
  }


  }