import 'package:flutter/widgets.dart';
import 'package:shop_app/components/time.dart';
import 'package:shop_app/components/video.dart';
import 'package:shop_app/screens/actualit%C3%A9/actualite_screen.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/center_of_interest/centre.dart';
import 'package:shop_app/screens/complete_profile/centre_interet.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/example/example_screen.dart';
import 'package:shop_app/screens/example2/main.dart';
import 'package:shop_app/screens/favorite/favorite_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/modif_interet/modif_interet_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/profile/profile.dart';
import 'package:shop_app/screens/jeu/jeu_screen.dart';
import 'package:shop_app/screens/profile/modif_info.dart';
import 'package:shop_app/screens/complete_profile/profile_complete.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfilePage.routeName: (context) => ProfilePage(),
  ModifProfile.routeName: (context) => ModifProfile(),
  FavoriteScreen.routeName: (context) => FavoriteScreen(),
 // CentreScreen.routeName: (context) => CentreScreen(),
 // LoginScreen3.routeName: (context) => LoginScreen3(),
  JeuScreen.routeName: (context) => JeuScreen(),
  ActualiteScreen.routeName: (context) => ActualiteScreen(),
  VideoApp.routeName: (context) => VideoApp(),
  Example.routeName: (context) => Example(),
  CentreIneteretScreen.routeName: (context) => CentreIneteretScreen(),
  Times.routeName: (context) => Times(),
  ModifIneteretScreen.routeName:(context) => ModifIneteretScreen(),
};
