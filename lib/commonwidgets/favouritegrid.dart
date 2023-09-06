import 'dart:math';
import 'package:beyouth/Modals/cartpagemodel.dart';
import 'package:beyouth/Providers/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Resources/colorresource.dart';
import '../Resources/favoriteadd.dart';
class FavoriteGrid extends ConsumerStatefulWidget {
  const FavoriteGrid({super.key, required this.favorite,required this.checkPage});
  final CartModel favorite;
  final bool checkPage;

  @override
  ConsumerState<FavoriteGrid> createState() => _FavoriteGridState();
}
class _FavoriteGridState extends ConsumerState<FavoriteGrid> {
  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         widget.checkPage == true ? IconButton(onPressed: () {
            final removeItem = ref
                .read(addToFavorites.notifier)
                .toggleToRemoveItems(widget.favorite);
          },
              icon: const Icon(Icons.close),
         ) : const SizedBox()
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
            widget.checkPage == false ?  IconButton(onPressed: (){
              final addItem = ref
                  .read(addToFavorites.notifier)
                  .toggleToAddItems(widget.favorite);
              }, icon: const Icon(Icons.favorite)) :const SizedBox(),
              IconButton(
                  onPressed: () {
                    // final addItem = ref
                    //     .read(addToFavorites.notifier)
                    //     .toggleToAddItems(widget.favorite);
                  },
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
