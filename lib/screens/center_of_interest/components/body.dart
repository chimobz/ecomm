

import 'package:flutter/material.dart';
import 'package:shop_app/models/category.dart';

class Body extends StatefulWidget {
  
  Body({Key key}) : super(key: key);
 

  @override
  _MyBodyState createState() => new _MyBodyState();
}

class _MyBodyState extends State<Body> {

  List<Map<String, dynamic>> categories =  [
      {"category_id": "5", "category_name": "Barber", "icon": Icons.calendar_today},
      {"category_id": "3", "category_name": "Carpanter","icon":Icons.cake_sharp},
      {"category_id": "7", "category_name": "Cook","icon":Icons.calculate},
      {"category_id": "50", "category_name": "Clothes","icon":Icons.business_rounded},
      {"category_id": "13", "category_name": "Elec","icon":Icons.cake},
      {"category_id": "17", "category_name": "Accessoires","icon":Icons.camera_front}
];
List _selecteCategorys = List();


void _onCategorySelected(bool selected, category_id) {
    if (selected == true) {
      setState(() {
        _selecteCategorys.add(category_id);
      });
    } else {
      setState(() {
        _selecteCategorys.remove(category_id);
      });
    }
  }
  

  @override
  Widget build(BuildContext content){

    return new Scaffold(
    
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return CheckboxListTile(
              value: _selecteCategorys
                  .contains(categories[index]['category_id']),
              onChanged: (bool selected) {
                _onCategorySelected(selected,
                    categories[index]['category_id']);
              },
              
              title: Text
              (categories[index]['category_name'], style: TextStyle(color: Colors.black,fontSize: 19)),
              secondary: Icon (categories[index]['icon'],
              size: 30,),
              activeColor: Colors.red,
              checkColor: Colors.yellow,
            );
          }),  
    );
   
    
  }
   

}