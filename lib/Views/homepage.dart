import 'package:beyouth/Modals/categorymodels.dart';
import 'package:beyouth/Modals/homecarouselmodel.dart';
import 'package:beyouth/Resources/colorresource.dart';
import 'package:beyouth/Resources/theme.dart';
import 'package:beyouth/Views/favorites_page.dart';
import 'package:beyouth/Views/products_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../commonwidgets/productdesign.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.isDark == true ? ColorResource.colorDark : ColorResource.bottomNavcolor,
      appBar: AppBar(
        backgroundColor: ColorResource.bottomNavcolor,
        title: const Text('BeYouth'),
        titleTextStyle: const TextStyle(fontSize: 30,color: ColorResource.colorYellow,fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favorites()));
          }, icon: const Icon(Icons.favorite))
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
           child: Column(
             children: [
                CarouselSlider.builder(itemCount: carouselLists.length, itemBuilder: (context,index,pageIndex){
                  return Image(image: AssetImage(carouselLists[index].images,),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,);
                },   options: CarouselOptions(
               autoPlay: true,
               height: 450,
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
            dotsCount: carouselLists.length,
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
               Container(
                 height: 110,
                   color: ColorResource.categoryBackground,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: categoryList.length,
                       itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductPage()));
                          },
                          child: Column(
                            children: [
                             Container(
                               margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                               height: 70,
                               width: 70,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 image: DecorationImage(image: AssetImage(categoryList[index].categoryImages),fit: BoxFit.fill)
                               ),
                             ),
                              const SizedBox(height: 8,),
                              Text(categoryList[index].categoryTitles,style: const TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        );
                   }),
               ),
               const SizedBox(
                 height: 15,
               ),

               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Big Saving Zone',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),)
                     ],
                   ),
                   const SizedBox(height: 5,),
                   SizedBox(
                     height: 222,
                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: offerZoneList.length,
                         itemBuilder: (context,index){
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                             height: 200,
                             width: 300,
                             decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage(offerZoneList[index].images),fit: BoxFit.fill)
                             ),
                           );
                         }),
                   ),
                 ],
               ),
               const SizedBox(height: 15,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text('Find More Products',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),)
                 ],
               ),
               const SizedBox(height: 5,),

          CarouselSlider.builder(itemCount: categoryList.length, itemBuilder: (context,index,pageIndex){
            return Image(image: AssetImage(categoryList[index].categoryImages,),
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,);
          },   options: CarouselOptions(
              autoPlay: true,
              height: 200,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
          ),

          ),
               const SizedBox(
                 height: 15,
               ),
               Container(
                 padding: const EdgeInsets.symmetric(vertical: 5),
                 height: 100,
                 width: MediaQuery.of(context).size.width,
                 color: ColorResource.categoryBackground,
                 child: Row(
                   children: [
                      const Image(
                          image: AssetImage(
                        'assets/images/dressbox.jpg'
                      ),
                        height: 90,
                        width: 100,
                      ),

                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text('WE MADE YOUR EVERYDAY FASHION BETTER!',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 13),),
                           ],
                         ),
                         const SizedBox(height: 3,),
                         Container(
                           height: 3,
                           width: 293,
                           color: ColorResource.colorYellow,
                         ),
                         const SizedBox(height: 6,),
                         SizedBox(
                           width: 280,
                             child: Text('In our journey to improve Everyday fashion,BeYouth presents EVERYDAY we arrange Comfortable & Affordable Fashion 24x7',style: TextStyle(fontWeight: FontWeight.w500,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 12),
                             textAlign: TextAlign.justify,
                             )),
                       ],
                     )
                   ],
                 ),
               ),
               const SizedBox(
                 height: 15,
               ),
               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('New Arrival',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),)
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
                   )
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               InkWell(
                 onTap: (){},
                 child: Container(
                   height: 70,
                   width: MediaQuery.of(context).size.width,
                   color: ColorResource.colorYellow,
                   child: Center(
                     child: Text('SHOP BY POPULAR CATEGORIES',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25),),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 10,
               ),
               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('T-SHIRTS - HIGH ON DEMAND',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 20),)
                     ],
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return ProductDesignWidget(titles: tShirtList[index].categoryTitles, images: tShirtList[index].categoryImages,
                             height: 200,
                             width: 160,

                           );
                         }, separatorBuilder: (context,index){
                       return const Divider(height: 100,);
                     }, itemCount: tShirtList.length),
                   )
                 ],
               ),

               const SizedBox(
                 height: 10,
               ),
               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('SHIRTS - FORMAL TO CASUAL STYLES',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 20),)
                     ],
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return ProductDesignWidget(titles: shirtList[index].categoryTitles, images: shirtList[index].categoryImages,
                             height: 200,
                             width: 160,

                           );
                         }, separatorBuilder: (context,index){
                       return const Divider(height: 100,);
                     }, itemCount: shirtList.length),
                   )
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('JOGGERS - STEP INTO EVERYDAY FIT',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 20),)
                     ],
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return ProductDesignWidget(titles: joggersList[index].categoryTitles, images: joggersList[index].categoryImages,
                             height: 230,
                             width: 180,

                           );
                         }, separatorBuilder: (context,index){
                       return const SizedBox(width: 15,);
                     }, itemCount: joggersList.length),
                   )
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('POLO - CLASSIC TO PLAYFUL',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 20),)
                     ],
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return ProductDesignWidget(titles: poloLists[index].categoryTitles, images: poloLists[index].categoryImages,
                             height: 230,
                             width: 180,

                           );
                         }, separatorBuilder: (context,index){
                       return const SizedBox(width: 15,);
                     }, itemCount: poloLists.length),
                   )
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('BOXERS - BREEZY SUMMER STYLES',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 20),)
                     ],
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return ProductDesignWidget(titles: boxerList[index].categoryTitles, images: boxerList[index].categoryImages,
                             height: 230,
                             width: 180,

                           );
                         }, separatorBuilder: (context,index){
                       return const SizedBox(width: 15,);
                     }, itemCount: boxerList.length),
                   )
                 ],
               ),
               const SizedBox(
                 height: 10,
               ),
               Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('EXPLORE MORE BOTTOMWEAR',style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 20),)
                     ],
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return ProductDesignWidget(titles: pantLists[index].categoryTitles, images: pantLists[index].categoryImages,
                             height: 200,
                             width: 160,

                           );
                         }, separatorBuilder: (context,index){
                       return const Divider(height: 100,);
                     }, itemCount: pantLists.length),
                   )
                 ],
               ),
             ],
           ),
        ),
      ),
    );
  }
}
