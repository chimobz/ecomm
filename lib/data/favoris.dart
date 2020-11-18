 import 'package:shop_app/models/Product.dart';
import 'package:shop_app/models/fav_product.dart';

/*class DataStorage {
   static List<FavoriteProduct> favoris=[];
 }
//   List<Categorie> categories = [Categorie(1,"clothes"),Categorie(2,"electronic")];
// }*/

import 'package:shop_app/data/list_fav.dart';
 class FavoriteProduct {




   
    void addFavorite(Product product) {
    mesFavoris.add(product);
  }
 
  void removeFavorite(Product product) {
    mesFavoris.remove(product);
  }
 
  bool isFavorite(Product product) {
    return mesFavoris.contains(product);
  }



 }