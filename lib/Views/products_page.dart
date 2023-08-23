import 'dart:math';

import 'package:beyouth/Modals/productsmodel.dart';
import 'package:beyouth/Views/cartpage.dart';
import 'package:beyouth/Views/favorites_page.dart';
import 'package:beyouth/Views/product_description.dart';
import 'package:beyouth/Views/search_page.dart';
import 'package:flutter/material.dart';

import '../Modals/cartpagemodel.dart';
import '../Resources/colorresource.dart';
import '../Resources/config.dart';
import '../Resources/theme.dart';
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final List<Map> _products = List.generate(
      100,
          (index) => {
        "id": index,
        "price": Random().nextInt(1000)
      }).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.isDark == true ? ColorResource.colorDark : ColorResource.bottomNavcolor,
      appBar: AppBar(
        backgroundColor: ColorResource.bottomNavcolor,
        title: const Text('Products'),
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Favorites(favoriteModel: favoriteData.favoriteItems,)));
          }, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartPage()));
          }, icon: const Icon(Icons.shopping_cart))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: productList.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DescriptionPage()));
                },
                child: GridTile(
                  key: ValueKey(_products[index]['id']),
                  footer: GridTileBar(
                    backgroundColor: Colors.black54,
                    title: Text(
                      productList[index].categoryTitles,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold,color: ColorResource.colorYellow),
                    ),
                    subtitle: Text("\u{20B9}${_products[index]['price'].toString()}",style: const TextStyle(
                        fontSize: 14,color: ColorResource.colorYellow)),
                    trailing:  Row(
                      children: [
                        IconButton(onPressed : (){
                          // addItemToFavorite(productList[index]);
                        },icon: const Icon(Icons.shopping_cart)),
                        SizedBox(width: 6,),
                        IconButton(onPressed: (){

                        }, icon: Icon(Icons.favorite))
                      ],
                    )
                  ),
                  child: Container(
                    height: 200,
                    width: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(productList[index].categoryImages),fit: BoxFit.fill)
                    ),
                  ),

                ),
              );
            }),
      );


  }
}
