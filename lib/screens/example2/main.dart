import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:shop_app/components/scaffoldCustomize.dart';

import 'package:shop_app/screens/example2/body.dart';

class Example extends StatelessWidget{
  static String routeName="/exp";


  @override
  Widget build(BuildContext context){

    return CustomScaffold(
      title: null,
      body: HomePage(),
      bottomMenuIndex: 3,

    );
  }
}