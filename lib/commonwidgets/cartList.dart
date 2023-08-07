import 'package:beyouth/commonwidgets/cardWidget.dart';
import 'package:flutter/material.dart';

import '../Modals/cartpagemodel.dart';
class CartList extends StatelessWidget {
  const CartList({super.key, required this.cartmodelDatas});

  final List<CartModel> cartmodelDatas;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: cartmodelDatas.length,
            itemBuilder: (ctx,index){
              return CardWidgetCart(cartModel: cartmodelDatas[index]);
            }),
      ),
    );
  }
}
