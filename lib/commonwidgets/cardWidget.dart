import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:flutter/material.dart';

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
              SizedBox(width: 20,),
              Column(
                children: [
                  Row(
                    children: [
                      Text(cartModel.productName!,style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),),
                      const SizedBox(width: 150,),
                      IconButton(onPressed: (){
                        final wasAdded = ref
                            .read(addToFavorites.notifier)
                            .toggleToAddItems(cartModel);
                        // ScaffoldMessenger.of(context).clearSnackBars();
                        // ScaffoldMessenger.of(context)
                        //     .showSnackBar(SnackBar(content: Text(wasAdded ? 'Meal Added as Favorite' : 'Meal Removed')));
                      }, icon: const Icon(Icons.favorite))
                    ],
                  ),
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
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                  Icons.arrow_back
                ),
                  Text('Swipe to remove from cart',style: TextStyle(color: Colors.red,fontSize: 20),),
                Icon(Icons.arrow_forward)
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
