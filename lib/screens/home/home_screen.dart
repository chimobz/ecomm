import 'package:flutter/material.dart';
import 'package:shop_app/components/scaffoldCustomize.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/screens/home/components/home_event.dart';
import 'package:shop_app/screens/home/components/home_bloc.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      background: null,
      title: null,
      body:
         Body(),
    
      bottomMenuIndex: 0,
      //bottomNavigationBar: OpenFlutterBottomMenu(bottomMenuIndex),
    );
  }
}
