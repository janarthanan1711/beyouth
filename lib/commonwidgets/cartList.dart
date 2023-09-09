import 'package:beyouth/Resources/favoriteadd.dart';
import 'package:beyouth/commonwidgets/cardWidget.dart';
import 'package:flutter/material.dart';

import '../Modals/cartpagemodel.dart';
import '../Providers/cart_provider.dart';
import '../Resources/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class CartList extends ConsumerStatefulWidget {
  const CartList({super.key, required this.cartmodelDatas,required this.removeItem});

  final List<CartModel>? cartmodelDatas;
  final Function(CartModel cartmodels) removeItem;


  @override
  ConsumerState<CartList> createState() => _CartListState();
}


class _CartListState extends ConsumerState<CartList> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: widget.cartmodelDatas!.length,
            itemBuilder: (ctx,index){
              final showAddedCarts = ref.watch(toggleAddToCart);
              return Dismissible(
                key: ValueKey(widget.cartmodelDatas![index]),
                onDismissed: (direction){
                  widget.removeItem(widget.cartmodelDatas![index]);
                },
                child: CardWidgetCart(
                  cartModel: showAddedCarts[index],
                  // removeDatas: removeItem(cartmodelDatas[index]),
                ),
              );
            }),
      ),
    );
  }
}
