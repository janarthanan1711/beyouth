import 'package:beyouth/commonwidgets/cardWidget.dart';
import 'package:flutter/material.dart';

import '../Modals/cartpagemodel.dart';
class CartList extends StatelessWidget {
  const CartList({super.key, required this.cartmodelDatas,required this.removeItem,required this.addItemToFavorite});

  final List<CartModel> cartmodelDatas;
  final Function(CartModel cartmodels) removeItem;
  final Function(CartModel cartmodels) addItemToFavorite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: cartmodelDatas.length,
            itemBuilder: (ctx,index){
              return Dismissible(
                key: ValueKey(cartmodelDatas[index]),
                onDismissed: (direction){
                  removeItem(cartmodelDatas[index]);
                },
                child: CardWidgetCart(
                  cartModel: cartmodelDatas[index],
                  // addToFavorite: addItemToFavorite(cartmodelDatas[index]),
                  // removeDatas: removeItem(cartmodelDatas[index]),
                ),
              );
            }),
      ),
    );
  }
}
