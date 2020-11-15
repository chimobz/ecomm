import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/video.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/splash/components/theme.dart' as Theme;

class Body extends StatefulWidget {
 
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {

  @override
  Widget build (BuildContext context){
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children : [
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
                          vertical: 20.0, horizontal: 42.0),
                      child: Text(
                        "Participer au jeu",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: ()  {Navigator.pushNamed(context, Video.routeName);}
                    // =>
                       // showInSnackBar("Login button pressed")
                       ),
              ),
              
              Padding(padding: EdgeInsets.all(20),
              child:  Card(
               elevation: 3.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
               child: Container(
                 alignment: Alignment.center,
                 width: 350.0,
                child:    Column(
                 children: [
                    Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: Text('Profile de dernier gagnant',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black)),
                      ),

                        Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        
                      ),

                  Container(
                    height: 150,
                  child: Stack(
                    children: <Widget>[
                        Container(
                                  width: 180.0,
                                  height: 180.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    image: new ExactAssetImage(
                                        'assets/images/profile.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                ),
                      Positioned(
                        right: 0.0,
                        bottom: 100.0,
                        child: new FloatingActionButton(
                          
                          child: SvgPicture.asset('assets/icons/badge.svg'),
                          backgroundColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
             
      
                   Container(
                       padding: EdgeInsets.all(15),
                       child: Text('Ahmed Mohamed',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black))
                    ),

                  
                  



               ],),
               )
             
               ),
              ),
                 Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                       // child: Text('Cadeau',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black)),
                      ),

                      SizedBox(
      width: double.infinity,
      height: 80,
      
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //color: kPrimaryColor,
        onPressed: (){},
        child: SvgPicture.asset('assets/icons/gift.svg'),
      ),
    )

              //         Container(
              //           height: 20,
              //           child:   FlatButton(
              // // height: 10,
              // // minWidth: 10,
              //       child: SvgPicture.asset('assets/icons/gift.svg'),
              //       onPressed: (){},
              //     ),

              //         )
           
             //profile de dernier gagnant

            


          ]
        )
      ),
    );
    
  }


}