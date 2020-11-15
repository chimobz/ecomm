import 'package:flutter/material.dart';
import 'package:shop_app/components/scaffoldCustomize.dart';
import 'package:shop_app/screens/actualité/components/body.dart';


class ActualiteScreen extends StatelessWidget {
 static String routeName="/actualites";
  @override
  Widget build (BuildContext){
    return CustomScaffold(
      title: 'Fil d\'actualité',
       body: Body(), 
       bottomMenuIndex: 1);

  }
}