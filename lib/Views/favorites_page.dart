import 'dart:math';

import 'package:beyouth/Resources/favoriteadd.dart';
import 'package:beyouth/Views/search_page.dart';
import 'package:flutter/material.dart';

import '../Modals/cartpagemodel.dart';
import '../Modals/productsmodel.dart';
import '../Resources/colorresource.dart';
import '../Resources/theme.dart';
import '../commonwidgets/favouritegrid.dart';
import 'cartpage.dart';

class Favorites extends StatefulWidget {
   const Favorites({super.key,this.favoriteModel});
   final List<CartModel>? favoriteModel;

  @override
  State<Favorites> createState() => _FavoritesState();
}
class _FavoritesState extends State<Favorites> {

  void removeFavorite(int index) {
    widget.favoriteModel!.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
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
          },
              icon: const Icon(Icons.shopping_cart))
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
          itemCount: widget.favoriteModel!.length,
          itemBuilder: (BuildContext ctx, index) {
            return FavoriteGrid(favorite: widget.favoriteModel![index]);
          }),
    );
  }
}
