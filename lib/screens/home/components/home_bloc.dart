// Home Screen Bloc
// Author: openflutterproject@gmail.com
// Date: 2020-02-06


/*import 'package:shop_app/models/fav_product.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/usecase/favorites/add_to_fav.dart';

import 'package:bloc/bloc.dart';
import 'package:shop_app/screens/home/components/home_event.dart';
import 'package:shop_app/screens/home/components/home_state.dart';
import 'package:shop_app/locator.dart';

//import 'home.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

    final AddToFavoritesUseCase addToFavoritesUseCase;
 HomeBloc() : 
   
    addToFavoritesUseCase = sl(),
    //removeFromFavoritesUseCase = sl(),
    //getHomePageProductsUseCase = sl(),
    super(HomeInitialState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {

    if (event is HomeAddToFavoriteEvent) {
      if (event.isFavorite) {
        await addToFavoritesUseCase.execute(
          //event.product
          FavoriteProduct (event.product)
        
          //null)
        );
      }
      }
    


    
  /*  if (event is HomeLoadEvent) {
      if (state is HomeInitialState) {
      //  HomeProductsResult results = await getHomePageProductsUseCase.execute(HomeProductParams());
        yield HomeLoadedState(
          salesProducts: results.salesProducts,
          newProducts: results.newProducts);
      } else if (state is HomeLoadedState) {
        yield state;
      }
    } else 
    */
  
      /* else {
        await removeFromFavoritesUseCase.execute(
          RemoveFromFavoritesParams(
            FavoriteProduct(event.product,)
            // null)
          )
        );
      }*/
     /* HomeProductsResult results = await getHomePageProductsUseCase.execute(HomeProductParams());
      yield HomeLoadedState(
        salesProducts: results.salesProducts,
        newProducts: results.newProducts);
    }*/
  
}
}
*/