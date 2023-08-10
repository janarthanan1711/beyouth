import 'dart:math';

import 'package:beyouth/Views/search_page.dart';
import 'package:flutter/material.dart';

import '../Modals/productsmodel.dart';
import '../Resources/colorresource.dart';
import '../Resources/theme.dart';
import 'cartpage.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    final List<Map> _products = List.generate(
        100,
            (index) =>
        {
          "id": index,
          "price": Random().nextInt(1000)
        }).toList();
    return Scaffold(
      backgroundColor: Mytheme.isDark == true
          ? ColorResource.colorDark
          : ColorResource.bottomNavcolor,
      appBar: AppBar(
        backgroundColor: ColorResource.bottomNavcolor,
        title: const Text('Favorites'),
        titleTextStyle: const TextStyle(fontSize: 30,
            color: ColorResource.colorYellow,
            fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: () {
            showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: CustomSearchDelegate()
            );
          }, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CartPage()));
          }, icon: const Icon(Icons.shopping_cart))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body:
      GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: productList.length,
          itemBuilder: (BuildContext ctx, index) {
            return GridTile(
              key: ValueKey(_products[index]['id']),
              header: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.close))
                ],
              ),
              footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    productList[index].categoryTitles,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorResource.colorYellow),
                  ),
                  subtitle: Text(
                      "\u{20B9}${_products[index]['price'].toString()}",
                      style: const TextStyle(
                          fontSize: 14, color: ColorResource.colorYellow)),
                  trailing: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_shopping_cart)),
                      SizedBox(width: 6,),

                    ],
                  )
              ),
              child: Container(
                height: 200,
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(productList[index].categoryImages),
                        fit: BoxFit.fill)
                ),
              ),

            );
          }),
    );
  }
}
