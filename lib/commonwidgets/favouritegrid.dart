import 'dart:math';

import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:flutter/material.dart';

import '../Resources/colorresource.dart';
import '../Resources/favoriteadd.dart';
class FavoriteGrid extends StatefulWidget {
  const FavoriteGrid({super.key, required this.favorite});
  final CartModel favorite;

  @override
  State<FavoriteGrid> createState() => _FavoriteGridState();
}
class _FavoriteGridState extends State<FavoriteGrid> {
  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.close))
        ],
      ),
      footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
              widget.favorite.productName!,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorResource.colorYellow),
          ),
          subtitle: Text(
              widget.favorite.productPrice.toString(),
              style: const TextStyle(
                  fontSize: 14, color: ColorResource.colorYellow)),
          trailing: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart)),
              const SizedBox(width: 6,),

            ],
          )
      ),
      child: Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.favorite.productImage!),
                fit: BoxFit.fill)
        ),
      ),

    );
  }
}
