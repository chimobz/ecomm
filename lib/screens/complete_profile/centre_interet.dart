import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/components/Centre_body.dart';



class CentreIneteretScreen extends StatelessWidget {
  static String routeName = "/centrescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
 
        
     //  title: Text('Choisissez vos centres d`\'intérêt'),
     // ),

       body:   CentreBody(),

      // HomePage(),
    );
  }
}