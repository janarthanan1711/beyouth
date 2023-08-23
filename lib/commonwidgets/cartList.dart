import 'package:beyouth/Resources/favoriteadd.dart';
import 'package:beyouth/commonwidgets/cardWidget.dart';
import 'package:flutter/material.dart';

import '../Modals/cartpagemodel.dart';
import '../Resources/config.dart';
class CartList extends StatefulWidget {
  const CartList({super.key, required this.cartmodelDatas,required this.removeItem});

  final List cartmodelDatas;
  final Function(CartModel cartmodels) removeItem;
  // final Function(CartModel cartmodels) addItemToFavorite;

  @override
  State<CartList> createState() => _CartListState();
}


class _CartListState extends State<CartList> {
  addItemToFavorite(CartModel favorites){
    Future.delayed(Duration.zero,(){
      setState(() {
        favoriteData.favoriteItems.add(favorites);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: widget.cartmodelDatas.length,
            itemBuilder: (ctx,index){
              return Dismissible(
                key: ValueKey(widget.cartmodelDatas[index]),
                onDismissed: (direction){
                  widget.removeItem(widget.cartmodelDatas[index]);
                },
                child: CardWidgetCart(
                  cartModel: widget.cartmodelDatas[index],
                  addToFavorite: addItemToFavorite
                  // removeDatas: removeItem(cartmodelDatas[index]),
                ),
              );
            }),
      ),
    );
  }
}
