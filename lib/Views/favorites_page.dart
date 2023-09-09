import 'dart:math';

import 'package:beyouth/Providers/favorites_provider.dart';
import 'package:beyouth/Resources/favoriteadd.dart';
import 'package:beyouth/Views/search_page.dart';
import 'package:flutter/material.dart';
import '../Modals/cartpagemodel.dart';
import '../Modals/productsmodel.dart';
import '../Resources/colorresource.dart';
import '../Resources/theme.dart';
import '../commonwidgets/favouritegrid.dart';
import 'cartpage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Favorites extends ConsumerStatefulWidget {
   const Favorites({super.key,this.favoriteModel});
   final List<CartModel>? favoriteModel;

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}
class _FavoritesState extends ConsumerState<Favorites> {
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
                delegate: CustomSearchDelegate()
            );
          }, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CartPage()));
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
            final showRemovedItems = ref
                .watch(addToFavorites);
            return FavoriteGrid(favorite: showRemovedItems[index],checkPage: true,);
          }),
    );
  }
}
