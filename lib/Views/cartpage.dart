import 'package:beyouth/Resources/config.dart';
import 'package:beyouth/Resources/favoriteadd.dart';
import 'package:beyouth/Views/favorites_page.dart';
import 'package:beyouth/Views/search_page.dart';
import 'package:flutter/material.dart';
import '../Modals/cartpagemodel.dart';
import '../Providers/cart_provider.dart';
import '../Providers/favorites_provider.dart';
import '../Resources/colorresource.dart';
import '../Resources/favoriteadd.dart';
import '../Resources/theme.dart';
import '../commonwidgets/cartList.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key, this.favoriteList});
  final favoriteList;
  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {

  void removeItemfromCart(CartModel cartmodel){
    final cartIndex = favoriteData.gettedAddedList.indexOf(cartmodel);
      Future.delayed(Duration.zero,(){
        setState(() {
          favoriteData.gettedAddedList.remove(cartmodel);
        });
      });
       ScaffoldMessenger.of(context).clearSnackBars();
       ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 3),
          content: const Text('Cart Removed.'),
          action: SnackBarAction(label: 'Undo', onPressed: (){
            setState(() {
              favoriteData.gettedAddedList.insert(cartIndex, cartmodel);
            });
          }),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    final showAddedCarts = ref.watch(toggleAddToCart);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        backgroundColor: ColorResource.bottomNavcolor,
        title: const Text('Cart'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30,color: ColorResource.colorYellow,fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: (){
            showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: CustomSearchDelegate()
            );
          }, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){
            final getFavItems = ref.watch(addToFavorites);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favorites(favoriteModel: getFavItems,)));
          }, icon: const Icon(Icons.favorite))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartList(
              cartmodelDatas:showAddedCarts,
               removeItem: removeItemfromCart,
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price Details',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                      Container(
                        height: 2,
                        width: double.maxFinite,
                        color: Colors.black12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total MRP (Inc. of Taxes)',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                          Text('₹3914',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 16,fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Beyouth Discount',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                          const Text('-₹2367',style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                          const Text('Free',style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cart Total',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                          Text('₹1547',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 16,fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        color: ColorResource.categoryBackground,
                        child: Column(

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('WE MADE YOUR EVERYDAY FASHION BETTER!',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 13),),
                              ],
                            ),
                            const SizedBox(height: 3,),
                            Container(
                              height: 3,
                              width: 293,
                              color: ColorResource.colorYellow,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ),
            SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 60,
            child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                        Text('₹1547',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

                    ElevatedButton(onPressed: () {  },
                    child: Text(
                      'CHECKOUT SECURELY'
                    ))

                  ],
                ),

            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
