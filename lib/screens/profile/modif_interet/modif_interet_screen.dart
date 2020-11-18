import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/components/Centre_body.dart';
import 'package:shop_app/screens/profile/modif_interet/modif_body.dart';



class ModifIneteretScreen extends StatelessWidget {
  static String routeName = "/centremodif";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
 
        
     //  title: Text('Choisissez vos centres d`\'intérêt'),
     // ),

       body:   ModifCentre(),

      // HomePage(),
    );
  }
}