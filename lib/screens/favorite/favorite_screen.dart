import 'package:flutter/material.dart';
import 'package:shop_app/components/scaffoldCustomize.dart';
import 'package:shop_app/screens/favorite/components/body.dart';

class FavoriteScreen extends StatelessWidget {
 static String routeName="/favorites";
  @override
  Widget build (BuildContext){
    return CustomScaffold(title: 'Mes favoris', body: Body(), bottomMenuIndex: 0);

  }
}