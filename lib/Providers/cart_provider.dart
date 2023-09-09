import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddToCart extends StateNotifier<List<CartModel>>{
  AddToCart() : super([]);
  void addToCart(CartModel cartModel){
    state = [...state,cartModel];
  }

  void removeFromCart(CartModel cartModel){
    final isAddedInCart = state.contains(cartModel);
    if(isAddedInCart){
      state = state.where((element) => element.id != cartModel.id).toList();
    }

  }
}

final toggleAddToCart = StateNotifierProvider<AddToCart,List<CartModel>>((ref) {
      return AddToCart();
} );