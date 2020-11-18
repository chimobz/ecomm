
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/models/Product.dart';

class FavoriteWidget extends StatefulWidget {
 
  final void Function(bool isFavorited) onFavoritesClick;
  final Product product;

  final bool isFavorite;
 
  FavoriteWidget({Key key, this.product,this.isFavorite, this.onFavoritesClick}) : super(key: key);
 
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}
 
class _FavoriteWidgetState extends State<FavoriteWidget> {
  
 
  bool isFavorited  ;
 
 
  @override
  void initState() {
    super.initState();
    isFavorited=widget.product.isFavorite;
    print("init"+isFavorited.toString());
   // isFavorited = !isFavorited;
  }
 
  void toggleFavorite() {
    setState((){
      isFavorited = !isFavorited;
      widget.product.isFavorite = isFavorited;
      print(widget.product.isFavorite);
      widget.onFavoritesClick(isFavorited);
    });
  }
 
  @override
  Widget build(BuildContext context) {
 
    return FloatingActionButton(
      heroTag: widget.product.id,
                    backgroundColor: Colors.white,
                    onPressed: toggleFavorite,
                    mini: true,
                     child: isFavorited
                   ? Icon(
                    FontAwesomeIcons.solidHeart,
                   color: Colors.red,
                    size: 18.0,
                  )
                : Icon(
                   FontAwesomeIcons.heart,
                    color: Colors.red,
                    size: 18.0,
                     ),
      //padding: EdgeInsets.all(0.0),
     /* child: IconButton(
          icon: isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
          color: Colors.yellow[500],
          onPressed: toggleFavorite),*/
    );
  }
}