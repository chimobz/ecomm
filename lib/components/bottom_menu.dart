// Bottom menu widget for Open Flutter E-commerce App
// Author: openflutterproject@gmail.com
// Date: 2020-02-06

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/actualit%C3%A9/actualite_screen.dart';
import 'package:shop_app/screens/example/example_screen.dart';
import 'package:shop_app/screens/example2/main.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/components/app_settings.dart';
import 'package:shop_app/screens/jeu/jeu_screen.dart';
import 'package:shop_app/screens/profile/profile.dart';
import 'package:shop_app/screens/center_of_interest/centre.dart';
import 'package:shop_app/components/theme.dart';
//import 'package:openflutterecommerce/config/routes.dart';

class OpenFlutterBottomMenu extends StatelessWidget {
  final int menuIndex;
  

  OpenFlutterBottomMenu(this.menuIndex);

  Color colorByIndex(ThemeData theme, int index) {
   return index == menuIndex ? theme.accentColor : theme.primaryColorLight;
  }

  BottomNavigationBarItem getItem(
      String image, String title, ThemeData theme, int index) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        image,
        height: 28.0,
        width: 28.0,
        color: colorByIndex(theme, index),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 10.0,
          color: colorByIndex(theme, index),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    List<BottomNavigationBarItem> menuItems =[
      getItem('assets/icons/bottom_menu/home.svg', 'Acuueil', _theme, 0),
      getItem('assets/icons/bottom_menu/news.svg', 'Fil actualité ', _theme, 1),
     
      getItem('assets/icons/bottom_menu/game.svg', 'Jeux',
          _theme, 2),
           getItem('assets/icons/bottom_menu/star.svg', 'Centre interêt', _theme, 3),
    ];
    if ( AppSettings.profileEnabled ) {
      menuItems.add(getItem(
        'assets/icons/bottom_menu/profile.svg', 'Profile', _theme, 4));
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: menuIndex,
          onTap: (value) {
            switch (value) {
              case 0:
                Navigator.pushNamed(context, HomeScreen.routeName);
                break;
              case 1:
                Navigator.pushNamed(context, ActualiteScreen.routeName);
                break;
              case 2:
                Navigator.pushNamed(context, JeuScreen.routeName);
                break;
              case 3:
                Navigator.pushNamed(
                    context, ActualiteScreen.routeName);
                break;
              case 4:
                Navigator.pushNamed(
                    context, ProfilePage.routeName);
                break;
            }
          },
          items: menuItems,
        ),
      ),
    );
  }
}
