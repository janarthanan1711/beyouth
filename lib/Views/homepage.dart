import 'package:beyouth/Modals/categorymodels.dart';
import 'package:beyouth/Modals/homecarouselmodel.dart';
import 'package:beyouth/Resources/colorresource.dart';
import 'package:beyouth/Resources/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
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
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: const Drawer(

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
                        );;
                   }),
               ),


             ],
           ),
        ),
      ),
    );
  }
}
