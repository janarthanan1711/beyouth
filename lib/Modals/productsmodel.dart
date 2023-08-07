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