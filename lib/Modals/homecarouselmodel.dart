class CarouselMainModel{
  String? images;
  CarouselMainModel(this.images);
}
List carouselLists = carouselDatas.map((items) => CarouselMainModel(items['images'])).toList();
var carouselDatas = [
  {'images':'assets/images/maleimage1.jpg'},
  {'images':'assets/images/maleimage2.jpg'},
  {'images':'assets/images/maleimage3.jpg'}
];