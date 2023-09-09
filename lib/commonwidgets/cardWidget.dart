import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:flutter/material.dart';
import 'package:beyouth/Providers/cart_provider.dart';
import '../Providers/favorites_provider.dart';
import '../Resources/colorresource.dart';
import '../Resources/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class CardWidgetCart extends ConsumerWidget{
  const CardWidgetCart({super.key, required this.cartModel});

  final CartModel cartModel;
  // final void Function(CartModel cartmodels) removeDatas;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
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
              const SizedBox(width: 20,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(cartModel.productName!,style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Text("₹ ${cartModel.productPrice!}",style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),),
                  Row(
                    children: [
                    Text(cartModel.color!,style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 18),),
                    const SizedBox(width: 10,),
                    Text("Size : ${cartModel.size}",style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 18),)
                  ],)
                ],
              )
            ],
          ),
          const Divider(color: Colors.black,),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 InkWell(
                   child:Text('Remove',style: TextStyle(color: Colors.grey,fontSize: 20),),
                   onTap: (){
                     final wasRemoved = ref.
                     read(toggleAddToCart.notifier).
                     removeFromCart(cartModel);
                   },
                 ),
                 const Text('|',style: TextStyle(color: Colors.grey,fontSize: 20)),
                  InkWell(
                    child:Text('Move To Favorite',style: TextStyle(color: Colors.grey,fontSize: 20),),
                    onTap: (){
                      final wasAdded = ref
                          .read(addToFavorites.notifier)
                          .toggleToAddItems(cartModel);
                    },
                  ),
                ],
              ),
             const SizedBox(
                height: 10,
              )

            ],
          )
        ],
      ),
    );
  }
}
