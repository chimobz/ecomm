import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/components/scaffoldCustomize.dart';
import 'package:shop_app/screens/jeu/components/body.dart';


class JeuScreen extends StatelessWidget {
  static String routeName="jeu";


  @override
  Widget build(BuildContext context) {
    return new CustomScaffold(
      title: "Jeu",
      background: null,
      // tabController: null,
      bottomMenuIndex: 3,
      body:Body()
    );
  
  }
  
  }