//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/facebookBotton.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/components/rounded_image.dart';
// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';
import '../../../components/button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 45, 15, 15),

              child:    new Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                "assets/images/log.jpg")
                        )
                    )
                    ),



            ),
            
           
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                      // RoundedImage(  icon: "assets/icons/google-icon.svg",
                    // press: () {},),
                   // Fb(press: (){ Navigator.pushNamed(context, HomeScreen.routeName);}),
                   /*  Button(
                      text: "Login",
                      press: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                    ),*/
                    _signInGmailButton(),
                    

                      // RoundedImage(  icon: "assets/icons/facebook-2.svg",
                     // press: () {},),
                      /* Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,),
                        child:  SvgPicture.asset("assets/icons/google-icon.svg")  
                    
                    ),*/


                      ],
                     
                     


                    ),
                   Container(padding: EdgeInsets.all(15),
                   child:  _signInFBButton(),),
                   
                   // Fb(press: (){ Navigator.pushNamed(context, SignUpScreen.routeName );}),
                     Spacer(flex: 1),
                    
                       Button(
                      text: "Login",
                      color: Colors.blueGrey,
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),


                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),*/
                
                    Container(
                      padding: EdgeInsets.all(15),
                      child:  Text("OR", ),
                    ),
                   
                    Button(
                      text: "Register",
                      color: Colors.cyan,
                      press: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

      Widget _signInGmailButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Image(image: AssetImage("assets/images/google.jpg"), height: 35.0),
           //  height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }



   Widget _signInFBButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Image(image: AssetImage("assets/images/fb.png"), height: 35.0),
           //  height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Facebook',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /*AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }*/
}
