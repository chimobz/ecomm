import 'package:flutter/material.dart';
import 'package:shop_app/components/button.dart';
import 'package:shop_app/screens/center_of_interest/centre.dart';
import 'package:shop_app/screens/complete_profile/centre_interet.dart';
import 'package:shop_app/screens/example2/main.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/modif_info.dart';
import 'package:shop_app/screens/profile/modif_interet/modif_interet_screen.dart';
import 'package:shop_app/screens/splash/components/theme.dart' as Theme;
import 'package:shop_app/screens/splash/splash_screen.dart';
class Body extends StatelessWidget  {
   static String nom="CB";
  @override 
  Widget build (BuildContext context) {
 
    return Container(
      child: Column(
        children: [
          new Container (
             height: 250.0,
            color: Colors.white,
            child:  Padding (
                      padding: EdgeInsets.only(top: 20.0),
                      child: new Stack(fit: StackFit.loose, children: <Widget>[
                        new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                              child: Column(children: [
                                Container(
                                  width: 140.0,
                                height: 140.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    image: new ExactAssetImage(
                                        'assets/images/profile.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                ),
                               Container(
                                 padding: EdgeInsets.all(15),
                                 child: Text(nom,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black))
                               )
                              ],),
                                
                                
                                ),
                               
                          ],
                        ),
                        ],
                        ),
                        ),
                        
                        ),
                        /*Container(
                          padding: EdgeInsets.all(20),
                          child : Button(color: Colors.blueAccent,press:  () {
                        Navigator.pushNamed(context, ModifProfile.routeName);
                      },text: 'Modifier vos informations',)
                        ),*/
                        Container(
                margin: EdgeInsets.fromLTRB(20, 40, 10, 0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Theme.Colors.loginGradientEnd,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 10.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientEnd,
                        Theme.Colors.loginGradientStart
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Theme.Colors.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 30.0),
                      child: Text(
                        "Modifier vos informations",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: ()  {Navigator.pushNamed(context, ModifProfile.routeName);}
                    // =>
                       // showInSnackBar("Login button pressed")
                       ),
              ),

                        Container(
                margin: EdgeInsets.fromLTRB(20, 40, 10, 0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Theme.Colors.loginGradientEnd,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 10.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientEnd,
                        Theme.Colors.loginGradientStart
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Theme.Colors.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: Text(
                        "Modifier vos centres d'interêt",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: ()  {Navigator.pushNamed(context, ModifIneteretScreen.routeName);}
                    // =>
                       // showInSnackBar("Login button pressed")
                       ),
              ),
              Padding(padding: EdgeInsets.only(top:20)),

              GestureDetector(

                onTap: ()  {Navigator.pushNamed(context, SplashScreen.routeName);} ,
                child:Container(


       // margin:
         //  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      // padding: EdgeInsets.only(top:50),
        height:70,
        width: 70,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Image.asset("assets/images/exit.jpg",
        ),
      ),
              ),

              



                         /* Container(
                          padding: EdgeInsets.all(20),
                          child : Button(color: Colors.indigoAccent,press:  () {
                        Navigator.pushNamed(context, CentreScreen.routeName);
                      },text: 'Modifier vos centres d\'intérêt',)
                        )*/

        ],
        ),
    );
  }



}