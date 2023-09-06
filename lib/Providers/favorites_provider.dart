import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddToFavoriteItems extends StateNotifier<List<CartModel>>{
  AddToFavoriteItems() : super([]);

  void toggleToAddItems(CartModel cartModel){
      state = [...state,cartModel];
  }

  void toggleToRemoveItems(CartModel cartModel){
    final cartIsFavorite = state.contains(cartModel);
    if(cartIsFavorite){
       state = state.where((element) => element.id != cartModel.id).toList();
    }
  }
}


final addToFavorites = StateNotifierProvider<AddToFavoriteItems,List<CartModel>>((ref){
  return AddToFavoriteItems();
});