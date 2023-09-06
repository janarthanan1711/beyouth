import 'cartpagemodel.dart';

class ProductListModel{
  String? categoryImages;
  String? categoryTitles;

  ProductListModel(this.categoryImages,this.categoryTitles);

}

List productList = productDatas.map((e) => ProductListModel(e['categoryImages'], e['categoryTitles'])).toList();

var productDatas = [
  {'categoryImages':'assets/images/tshirts.jpg','categoryTitles': 'T-SHIRTS'},
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/polos.jpeg','categoryTitles': 'POLO'},
  {'categoryImages':'assets/images/chinos.jpg','categoryTitles': 'CHINOS'},
  {'categoryImages':'assets/images/shirts.jpg','categoryTitles': 'SHIRTS'},
  {'categoryImages':'assets/images/boxers.jpg','categoryTitles': 'BOXERS'},
  {'categoryImages':'assets/images/tshirts.jpg','categoryTitles': 'T-SHIRTS'},
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/polos.jpeg','categoryTitles': 'POLO'},
  {'categoryImages':'assets/images/chinos.jpg','categoryTitles': 'CHINOS'},
  {'categoryImages':'assets/images/shirts.jpg','categoryTitles': 'SHIRTS'},
  {'categoryImages':'assets/images/boxers.jpg','categoryTitles': 'BOXERS'},
  {'categoryImages':'assets/images/tshirts.jpg','categoryTitles': 'T-SHIRTS'},
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/polos.jpeg','categoryTitles': 'POLO'},
  {'categoryImages':'assets/images/chinos.jpg','categoryTitles': 'CHINOS'},
  {'categoryImages':'assets/images/shirts.jpg','categoryTitles': 'SHIRTS'},
  {'categoryImages':'assets/images/boxers.jpg','categoryTitles': 'BOXERS'}
];


final List<CartModel> cartProductList=[
  CartModel(productName: 'T-shirts', productImage: 'assets/images/tshirts.jpg',productPrice:  250, color: 'black', size: 'M',id: 1),
  CartModel(productName: 'Joggers', productImage: 'assets/images/joggers.jpeg',productPrice:  790, color: 'black', size: 'M',id: 2),
  CartModel(productName: 'Chinos', productImage: 'assets/images/chinos.jpg',productPrice:  700, color: 'black', size: 'M',id: 3),
  CartModel(productName: 'Shirts', productImage: 'assets/images/shirts.jpg',productPrice:  550, color: 'black', size: 'M',id: 4),
  CartModel(productName: 'Boxers', productImage: 'assets/images/boxers.jpg',productPrice:  200, color: 'black', size: 'M',id: 5),
  CartModel(productName: 'PoloS', productImage: 'assets/images/polos.jpeg',productPrice:  550, color: 'black', size: 'M',id: 6),
  CartModel(productName: 'T-shirts', productImage: 'assets/images/tshirts.jpg',productPrice:  250, color: 'black', size: 'M',id: 1),
  CartModel(productName: 'Joggers', productImage: 'assets/images/joggers.jpeg',productPrice:  790, color: 'black', size: 'M',id: 2),
  CartModel(productName: 'Chinos', productImage: 'assets/images/chinos.jpg',productPrice:  700, color: 'black', size: 'M',id: 3),
  CartModel(productName: 'Shirts', productImage: 'assets/images/shirts.jpg',productPrice:  550, color: 'black', size: 'M',id: 4),
  CartModel(productName: 'Boxers', productImage: 'assets/images/boxers.jpg',productPrice:  200, color: 'black', size: 'M',id: 5),
  CartModel(productName: 'PoloS', productImage: 'assets/images/polos.jpeg',productPrice:  550, color: 'black', size: 'M',id: 6),
  CartModel(productName: 'T-shirts', productImage: 'assets/images/tshirts.jpg',productPrice:  250, color: 'black', size: 'M',id: 1),
  CartModel(productName: 'Joggers', productImage: 'assets/images/joggers.jpeg',productPrice:  790, color: 'black', size: 'M',id: 2),
  CartModel(productName: 'Chinos', productImage: 'assets/images/chinos.jpg',productPrice:  700, color: 'black', size: 'M',id: 3),
  CartModel(productName: 'Shirts', productImage: 'assets/images/shirts.jpg',productPrice:  550, color: 'black', size: 'M',id: 4),
  CartModel(productName: 'Boxers', productImage: 'assets/images/boxers.jpg',productPrice:  200, color: 'black', size: 'M',id: 5),
  CartModel(productName: 'PoloS', productImage: 'assets/images/polos.jpeg',productPrice:  550, color: 'black', size: 'M',id: 6),
  CartModel(productName: 'T-shirts', productImage: 'assets/images/tshirts.jpg',productPrice:  250, color: 'black', size: 'M',id: 1),
  CartModel(productName: 'Joggers', productImage: 'assets/images/joggers.jpeg',productPrice:  790, color: 'black', size: 'M',id: 2),
  CartModel(productName: 'Chinos', productImage: 'assets/images/chinos.jpg',productPrice:  700, color: 'black', size: 'M',id: 3),
  CartModel(productName: 'Shirts', productImage: 'assets/images/shirts.jpg',productPrice:  550, color: 'black', size: 'M',id: 4),
  CartModel(productName: 'Boxers', productImage: 'assets/images/boxers.jpg',productPrice:  200, color: 'black', size: 'M',id: 5),
  CartModel(productName: 'PoloS', productImage: 'assets/images/polos.jpeg',productPrice:  550, color: 'black', size: 'M',id: 6),
];