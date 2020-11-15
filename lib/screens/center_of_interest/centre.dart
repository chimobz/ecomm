import 'package:flutter/material.dart';
import 'package:shop_app/components/scaffoldCustomize.dart';
import 'package:shop_app/screens/center_of_interest/components/body.dart';

class CentreScreen extends StatelessWidget {
  static String routeName="/centre";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new CustomScaffold(
      bottomMenuIndex: 2,    
      title: "Centre d\'interêt",
     
      body: Body(),
    );
  }
}