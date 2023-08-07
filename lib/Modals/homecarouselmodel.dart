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

class OfferZoneImages{
  String? images;
  OfferZoneImages(this.images);
}

List offerZoneList = offerZonesDatas.map((e) => OfferZoneImages(e['images'])).toList();

var offerZonesDatas = [
  {'images':'assets/images/offerZone1.jpg'},
  {'images':'assets/images/offerZone2.jpg'},
  {'images':'assets/images/offerZone3.jpg'},
];

