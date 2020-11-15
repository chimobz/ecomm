import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/components/scaffoldCustomize.dart';
import 'package:shop_app/screens/profile/components/body.dart';

class ProfilePage extends StatefulWidget {
  static String routeName="profile";
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new CustomScaffold(
      title: "Mon profil",
      background: null,
      // tabController: null,
      bottomMenuIndex: 4,
      body:Body()
    );
  
  }
  
  }

