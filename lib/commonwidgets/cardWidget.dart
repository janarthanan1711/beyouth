import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:flutter/material.dart';
class CardWidgetCart extends StatelessWidget {
  const CardWidgetCart({super.key, required this.cartModel});

  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image(
                      height: 60,
                      width: 50,
                      image: AssetImage(cartModel.productImage!)),
                  const SizedBox(height: 5,),

                ],
              ),
              Column(
                children: [
                  Text(cartModel.productName!),
                  const SizedBox(height: 5,),
                  Text("₹ ${cartModel.productPrice!}"),
                  Row(children: [
                    Text(cartModel.color!),
                    Text("Size : ${cartModel.size}")
                  ],)
                ],
              )
            ],
          ),
          const Divider(color: Colors.black,),
          Row(
            children: [
              TextButton(onPressed: (){}, child: const Text('REMOVE')),
              const Text('|'),
              TextButton(onPressed: (){}, child: const Text('MOVE TO WISHLIST'))
            ],
          )
        ],
      ),
    );
  }
}
