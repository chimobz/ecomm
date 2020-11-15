
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class Times extends StatefulWidget {
  static String  routeName ="time";
  Times({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Times> {
  @override
  Widget build(BuildContext context) {
    int endTime =//1607975727;
    DateTime.now().millisecondsSinceEpoch + 2000 * 60;
    return Scaffold(
      body: //Column(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //children: <Widget>[
          //CountdownTimer(
          //  endTime: endTime,
          //  onEnd: () {
         //     print('onEnd');
        //    },
         // ),
          CountdownTimer(
            endTime: endTime,
            textStyle: TextStyle(fontSize: 30, color: Colors.pink),
          ),
          /*CountdownTimer(
            endTime: endTime,
            widgetBuilder: (_, CurrentRemainingTime time) {
              if(time == null) {
                return Text('Game over');
              }
              return Text(
                  'days: [ ${time.days} ], hours: [ ${time.hours} ], min: [ ${time.min} ], sec: [ ${time.sec} ]');
            },
          ),*/
       /*   CountdownTimer(
            endTime: endTime,
            widgetBuilder: (BuildContext context, CurrentRemainingTime time) {
              if(time == null) {
                return Text('Date Expirée');
              }
            //  List<Widget> list = [];
             /* if(time.days != null) {
                list.add(Row(
                  children: <Widget>[
                    Icon(Icons.sentiment_dissatisfied),
                    Text(time.days.toString()),
                  ],
                ));
              }*/
              /*if(time.hours != null) {
                list.add(Row(
                  children: <Widget>[
                    Icon(Icons.sentiment_satisfied),
                    Text(time.hours.toString()),
                  ],
                ));
              }*/
            /*  if(time.min != null) {
                list.add(Row(
                  children: <Widget>[
                    Icon(Icons.sentiment_very_dissatisfied),
                    Text(time.min.toString()),
                  ],
                ));
              }*/
              // if(time.sec != null) {
              //   list.add(Row(
              //     children: <Widget>[
              //       Icon(Icons.sentiment_very_satisfied),
              //       Text(time.sec.toString()),
              //     ],
              //   ));
              // }

           /*  return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              );*/
            },*/
          //),
      //  ],
      //),
    );
  }

}