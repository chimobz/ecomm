import 'package:flutter/material.dart';
//import 'package:flutter_multiselection_list/griditem.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Item> itemList;
  List<Item> selectedList;

  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = List();
    selectedList = List();
    itemList.add(Item(1,"assets/images/categories/auto.jpg","Automobile"));
    itemList.add(Item(2,"assets/images/categories/clothes.jpg","Clothes"));
    itemList.add(Item(3,"assets/images/categories/auto.jpg","Automobile"));
    itemList.add(Item(4,"assets/images/categories/clothes.jpg","Clothes"));
    itemList.add(Item(5,"assets/images/categories/auto.jpg","Automobile"));
    itemList.add(Item(6,"assets/images/categories/clothes.jpg","Clothes"));
    itemList.add(Item(7,"assets/images/categories/cuisine.png","Cuisine"));
    itemList.add(Item(8,"assets/images/categories/basket.png","Basket"));
    itemList.add(Item(9,"assets/images/categories/phone.png","Smart phone"));
    itemList.add(Item(9,"assets/images/categories/montre.png","Montre"));
    // itemList.add(Item("assets/images/glap.png", 2));
    // itemList.add(Item("assets/images/glap.png", 3));
    // itemList.add(Item("assets/images/glap.png", 4));
    // itemList.add(Item("assets/images/glap.png", 5));
    // itemList.add(Item("assets/images/glap.png", 6));
    // itemList.add(Item("assets/images/glap.png", 7));
    // itemList.add(Item("assets/images/glap.png", 8));
    // itemList.add(Item("assets/images/glap.png", 9));
    // itemList.add(Item("assets/images/glap.png", 10));
    // itemList.add(Item("assets/images/glap.png", 11));
    // itemList.add(Item("assets/images/glap.png", 12));
    // itemList.add(Item("assets/images/glap.png", 13));
    // itemList.add(Item("assets/images/glap.png", 14));
    // itemList.add(Item("assets/images/glap.png", 15));
    // itemList.add(Item("assets/pringles.png", 16));
    // itemList.add(Item("assets/pringles.png", 17));
    // itemList.add(Item("assets/pringles.png", 18));
    // itemList.add(Item("assets/pringles.png", 19));
    // itemList.add(Item("assets/pringles.png", 20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: GridView.builder(
          itemCount: itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.75,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2
              ),
          itemBuilder: (context, index) {
            return GridItem(
                item: itemList[index],
                isSelected: (bool value) {
                  setState(() {
                    if (value) {
                      selectedList.add(itemList[index]);
                    } else {
                      selectedList.remove(itemList[index]);
                    }
                  });
                  print("$index : $value");
                },
                key: Key(itemList[index].id.toString()+itemList[index].title)
                );
          }),
    );
  }

  getAppBar() {
    return AppBar(
      title: Text(selectedList.length < 1
          ? "Centre d\'intérêt"
          : "Centre d\'intérêt " + "  (${selectedList.length}) "),
      actions: <Widget>[
        InkWell(
         child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.done),
                )
              //  onTap: press,
        )
       /* selectedList.length < 1
            ? Container()
            : InkWell(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < selectedList.length; i++) {
                      itemList.remove(selectedList[i]);
                    }
                    selectedList = List();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.delete),
                ))*/
      ],
      
    );
  }
}

class Item {
    int id;
  String imageUrl;

  String title;

  Item( this.id,this.imageUrl,this.title);
}

class GridItem extends StatefulWidget {
  final Key key;
  final Item item;
  final ValueChanged<bool> isSelected;

  GridItem({this.item, this.isSelected, this.key});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.black.withOpacity(isSelected ? 0.2 : 0),
          //  colorBlendMode: BlendMode.color,
        
           
            child: Column(children: [
               Image.asset(
                  
                 
                 
            widget.item.imageUrl,
            
           
            height: 90,
          ),
          Padding(
            padding: EdgeInsets.only(top:15),
          child: Text(widget.item.title, style: TextStyle(color: Colors.indigo,fontSize: 18),
         
           
           ),
          ),
              isSelected
              ? Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check_circle,
                color: Colors.indigo,
              ),
            ),
          )
              : Container()

  

            ],)

          ),
         
      
        ],
      ),
    );
  }
}