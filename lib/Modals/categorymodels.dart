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

class ShirtCategories{
  String? categoryImages;
  String? categoryTitles;

  ShirtCategories(this.categoryTitles,this.categoryImages);
}
List shirtList = shirtDatas.map((e) => ShirtCategories(e['categoryTitles'], e['categoryImages'])).toList();
var shirtDatas = [
  {'categoryImages':'assets/images/tshirts.jpg','categoryTitles': 'T-SHIRTS'},
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/polos.jpeg','categoryTitles': 'POLO'},
  {'categoryImages':'assets/images/chinos.jpg','categoryTitles': 'CHINOS'},
  {'categoryImages':'assets/images/shirts.jpg','categoryTitles': 'SHIRTS'},
  {'categoryImages':'assets/images/boxers.jpg','categoryTitles': 'BOXERS'}
];

class TShirtCategories{
  String? categoryImages;
  String? categoryTitles;

  TShirtCategories(this.categoryTitles,this.categoryImages);
}
List tShirtList = TShirtDatas.map((e) => TShirtCategories(e['categoryTitles'], e['categoryImages'])).toList();
var TShirtDatas = [
  {'categoryImages':'assets/images/tshirts.jpg','categoryTitles': 'T-SHIRTS'},
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/polos.jpeg','categoryTitles': 'POLO'},
  {'categoryImages':'assets/images/chinos.jpg','categoryTitles': 'CHINOS'},
  {'categoryImages':'assets/images/shirts.jpg','categoryTitles': 'SHIRTS'},
  {'categoryImages':'assets/images/boxers.jpg','categoryTitles': 'BOXERS'}
];

class JoggerCategories{
  String? categoryImages;
  String? categoryTitles;

  JoggerCategories(this.categoryTitles,this.categoryImages);
}
List joggersList = joggersDatas.map((e) => JoggerCategories(e['categoryTitles'], e['categoryImages'])).toList();
var joggersDatas = [
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/knittedjoggers.jpg','categoryTitles': 'KNITTED JOGGERS'},

];
class BoxerCategories{
  String? categoryImages;
  String? categoryTitles;

  BoxerCategories(this.categoryTitles,this.categoryImages);
}
List boxerList = boxerDatas.map((e) => BoxerCategories(e['categoryTitles'], e['categoryImages'])).toList();
var boxerDatas = [
  {'categoryImages':'assets/images/boxers.jpg','categoryTitles': 'PRINTED BOXERS'},
  {'categoryImages':'assets/images/plainboxers.jpg','categoryTitles': 'PLAIN BOXERS'},

];

class PoloCategories{
  String? categoryImages;
  String? categoryTitles;

  PoloCategories(this.categoryTitles,this.categoryImages);
}
List poloLists = polodatas.map((e) => PoloCategories(e['categoryTitles'], e['categoryImages'])).toList();
var polodatas = [
  {'categoryImages':'assets/images/poloplain.jpg','categoryTitles': 'PLAIN POLO'},
  {'categoryImages':'assets/images/polos.jpeg','categoryTitles': 'PRINTED POLO'},
];

class PantsCategory{
  String? categoryImages;
  String? categoryTitles;

  PantsCategory(this.categoryTitles,this.categoryImages);
}
List pantLists = pantdatas.map((e) => PantsCategory(e['categoryTitles'], e['categoryImages'])).toList();
var pantdatas = [
  {'categoryImages':'assets/images/joggers.jpeg','categoryTitles': 'JOGGERS'},
  {'categoryImages':'assets/images/chinos.jpg','categoryTitles': 'CHINOS'},
  {'categoryImages':'assets/images/knittedjoggers.jpg','categoryTitles': 'KNITTED JOGGERS'},
];