class CategoryModels{
  String? categoryImages;
  String? categoryTitles;

  CategoryModels(this.categoryImages,this.categoryTitles);
}
List categoryList = categoryDatas.map((e) => CategoryModels(e['categoryImages'], e['categoryTitles'])).toList();
var categoryDatas = [
  {'categoryImages':'assets/images/tshirts.jpg','categoryTitles': 'T-SHIRTS'},
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/polos.jpeg','categoryTitles': 'POLO'},
  {'categoryImages':'assets/images/chinos.jpg','categoryTitles': 'CHINOS'},
  {'categoryImages':'assets/images/shirts.jpg','categoryTitles': 'SHIRTS'},
  {'categoryImages':'assets/images/boxers.jpg','categoryTitles': 'BOXERS'}
];
