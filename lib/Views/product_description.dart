import 'package:beyouth/Modals/categorymodels.dart';
import 'package:beyouth/Views/cartpage.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../Resources/colorresource.dart';
import '../Resources/config.dart';
import '../Resources/theme.dart';
import '../commonwidgets/productdesign.dart';
import '../commonwidgets/sizechartwidget.dart';
import 'favorites_page.dart';
class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  int _activeIndex = 0;
  double rating = 0;
  List<String> sizes = [
    '30','32','34','36','38','40'
  ];
  String selectedValue = '30';
  String dropdownValue = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.isDark == true ? ColorResource.colorDark : ColorResource.bottomNavcolor,
      bottomNavigationBar: const BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        color: ColorResource.colorYellow,
        elevation: 0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Text('Wishlist')
                ],
              ),
              VerticalDivider(
                color: Colors.black,  //color of divider
                width: 10, //width space of divider
                thickness: 3, //thickness of divier line
                indent: 10, //Spacing at the top of divider.
                endIndent: 10, //Spacing at the bottom of divider.
              ),
              Row(
                children: [
                  Icon(Icons.shopping_cart),
                  Text('Add to Cart')
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: ColorResource.bottomNavcolor,
        title: const Text('Description'),
        titleTextStyle: const TextStyle(fontSize: 30,color: ColorResource.colorYellow,fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favorites(favoriteModel: favoriteData.favoriteItems)));
          }, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartPage()));
          }, icon: const Icon(Icons.shopping_cart))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(itemCount: womenCategoryList.length, itemBuilder: (context,index,pageIndex){
                return Image(image: AssetImage(womenCategoryList[index].categoryImages,),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,);
              },   options: CarouselOptions(
                  autoPlay: false,
                  height: 480,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  onPageChanged: (activeIndex, reason) {
                    setState(() {
                      _activeIndex = activeIndex;
                    });
                  }
              ),
              ), const SizedBox(height: 10,),
              DotsIndicator(
                dotsCount: womenCategoryList.length,
                position: _activeIndex,
                decorator: DotsDecorator(
                  color: Colors.black87, // Inactive color
                  activeColor: Colors.yellowAccent,
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('CHINO PANTS',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.PrimaryColor : ColorResource.colorYellow),)
                      ],
                    ),
                    Row(
                      children: [
                        Text('Rich Black Chinos for Men',style: TextStyle(color: Mytheme.isDark == true ? ColorResource.PrimaryColor : Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              text: '₹1547',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(text: '  67% OFF',
                                    style: const TextStyle(
                                        color: Colors.green, fontSize: 18),
                                    recognizer: TapGestureRecognizer()

                                )
                              ]
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RatingBar(
                          initialRating: 0,
                          minRating: 0,
                          maxRating: 5,
                          allowHalfRating: true,
                          itemSize: 30.0,
                          ratingWidget: RatingWidget(
                            full: const Icon(Icons.star, color: ColorResource.ratingColor),
                            half: const Icon(Icons.star_half, color: ColorResource.ratingColor),
                            empty: const Icon(Icons.star_border, color: ColorResource.ratingColor),
                          ),
                          onRatingUpdate: (ratings) {
                             setState(() {
                               rating = ratings;
                             });
                          },
                        ),
                        const SizedBox(width: 10,),
                        Text(rating.toString(),style: const TextStyle(fontSize: 16),)
                      ],
                    ),
                    const Row(
                      children: [Text('Size',style: TextStyle(fontSize: 18,color: Colors.cyan))],
                    ),
                    SizeSelector(onSizeSelected: (selectedValue){
                      setState(() {
                        selectedValue = sizes[5];
                      });
                    },selectedSize: '30',sizes: sizes,),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [Text('Select Quantity',style: TextStyle(fontSize: 18,color: Colors.cyan))],
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Text('Qty',style: TextStyle(fontSize: 18,color: Colors.cyan)),
                              const SizedBox(width: 20,),
                              DropdownButton<String>(
                                value: dropdownValue,
                                onChanged: (String? value){
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                                items: <String>['1', '2', '3', '4','5','6','7','8','9','10']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 30),
                                    ),
                                  );

                                }).toList(),
                      ),
                            ],
                          ),
                        ),
                    ),
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Explore More',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),)
                          ],
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ProductDesignWidget(titles: categoryList[index].categoryTitles, images: categoryList[index].categoryImages,
                                  height: 200,
                                  width: 160,

                                );
                              }, separatorBuilder: (context,index){
                            return const Divider(height: 100,);
                          }, itemCount: categoryList.length),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('For Girls',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),)
                          ],
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ProductDesignWidget(titles: womenCategoryList[index].categoryTitles, images: womenCategoryList[index].categoryImages,
                                  height: 200,
                                  width: 160,

                                );
                              }, separatorBuilder: (context,index){
                            return const Divider(height: 100,);
                          }, itemCount: womenCategoryList.length),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
