import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:flutter/material.dart';

import '../Resources/colorresource.dart';
import '../Resources/theme.dart';
class CardWidgetCart extends StatelessWidget {
  const CardWidgetCart({super.key, required this.cartModel});

  final CartModel cartModel;
  // final void Function(CartModel cartmodels) removeDatas;
  // final void Function(CartModel cartmodels)? addToFavorite;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width:70,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(cartModel.productImage!),fit: BoxFit.fill)
                    ),
                  ),

                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text(cartModel.productName!,style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),),
                  const SizedBox(height: 5,),
                  Text("₹ ${cartModel.productPrice!}",style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),),
                  Row(children: [
                    Text(cartModel.color!,style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 18),),
                    const SizedBox(width: 20,),
                    Text("Size : ${cartModel.size}",style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 18),)
                  ],)
                ],
              )
            ],
          ),
          const Divider(color: Colors.black,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed:(){
                // removeDatas(cartModel);
              }
              , child: const Text('REMOVE',style: TextStyle(color: ColorResource.colorYellow),)),
              const Text('|'),
              TextButton(onPressed: (){

              }, child: const Text('MOVE TO WISHLIST',style: TextStyle(color: ColorResource.colorYellow)))
            ],
          )
        ],
      ),
    );
  }
}
