import 'package:flutter/foundation.dart';

import '../Modals/cartpagemodel.dart';

class FavoriteList with ChangeNotifier {
  // ChangeNotifier : will provide a notifier for any changes in the value to all it's listeners
  List<Favorite>? favorites = [];
  FavoriteList({this.favorites});

  getFavorite() => favorites;
  void addFavorite(String name,String image,int price) {
    favorites!.add(Favorite(name: name, price: price, image: image));
    notifyListeners();
  }

  void removeFavorite(int index) {
    favorites!.removeAt(index);
    notifyListeners();
  }


  final List<CartModel> gettedAddedList=[
    CartModel(productName: 'Jogger', productImage: 'assets/images/joggers.jpeg',productPrice:  549, color: 'black', size: 'M',id: 1),
    CartModel(productName: 'polo', productImage: 'assets/images/joggers.jpeg',productPrice:  549, color: 'black', size: 'M',id: 2),
    CartModel(productName: 'Jogger', productImage: 'assets/images/joggers.jpeg',productPrice:  549, color: 'black', size: 'M',id: 3),
    CartModel(productName: 'Jogger', productImage: 'assets/images/joggers.jpeg',productPrice:  549, color: 'black', size: 'M',id: 4),
  ];
}


class Favorite {
  String name;
  int price;
  String image;
  Favorite({required this.name,required this.price,required this.image});
}