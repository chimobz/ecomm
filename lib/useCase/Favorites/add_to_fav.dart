/// # 5. Product Cart screen
/// 5.3. Add product cart item to favorites use-case: 
/// User clicks on top right icon of the product cart item and 
/// clicks “Add to Favorites” in the popup. 
/// The product is added to favorites with the same color 
/// and size as the cart item.
/// https://medium.com/@openflutterproject/open-flutter-project-e-commerce-app-use-cases-and-features-6b7414a6e708

//import 'package:openflutterecommerce/data/model/favorite_product.dart';
//import 'package:openflutterecommerce/data/repositories/product_repository_impl.dart';
import 'package:shop_app/data/categories.dart';
import 'package:shop_app/data/favoris.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/models/fav_product.dart';
import 'package:shop_app/useCase/base_use_case.dart';
import 'package:shop_app/repo/product_repository_impl.dart';

abstract class AddToFavoritesUseCase implements BaseUseCase<AddToFavoriteResult, FavoriteProduct> {}

    
class AddToFavoritesUseCaseImpl implements AddToFavoritesUseCase {

  @override
  Future<AddToFavoriteResult> execute (FavoriteProduct item) async {
    try {
      ProductRepositoryImpl.dataStorage.favProducts.add(
       new  FavoriteProduct(
          item.product,
  
        )
      );
      return AddToFavoriteResult(result: true);
    } catch (e) {
      return AddToFavoriteResult(  
        result: false,
        exception: AddProductToCartException()
      );
    }
  }

}

class AddProductToCartException implements Exception {}

class AddToFavoriteResult extends UseCaseResult {
  AddToFavoriteResult({Exception exception, bool result}) 
    : super(exception: exception, result: result);
}