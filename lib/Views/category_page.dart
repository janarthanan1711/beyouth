import 'package:beyouth/Modals/categorymodels.dart';
import 'package:flutter/material.dart';

import '../Resources/colorresource.dart';
import '../Resources/theme.dart';
class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Mytheme.isDark == true ? ColorResource.colorDark : ColorResource.bottomNavcolor,
          appBar: AppBar(
            backgroundColor: ColorResource.bottomNavcolor,
            title: const Text('Category'),
            titleTextStyle: const TextStyle(fontSize: 30,color: ColorResource.colorYellow,fontWeight: FontWeight.bold),
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [ColorResource.colorYellow, ColorResource.iconBackgroundColor]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Mens"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Womens"),
                    ),
                  ),

                ]),
          ),
          body: TabBarView(children: [
            SizedBox(
              height: 700,
              child: ListView.builder(
                  itemCount: categoryList.length,
                  itemBuilder: (context,index){
                    return SizedBox(
                      height: 100,
                      child: Card(
                        child: Center(
                          child: ListTile(
                            leading: Container(
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(categoryList[index].categoryImages),fit: BoxFit.fill)
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(categoryList[index].categoryTitles,style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            SizedBox(
              height: 700,
              child: ListView.builder(
                itemCount: womenCategoryList.length,
                  itemBuilder: (context,index){
                    return SizedBox(
                      height: 100,
                      child: Card(
                        child: Center(
                          child: ListTile(
                            leading: Container(
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(womenCategoryList[index].categoryImages),fit: BoxFit.fill)
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(womenCategoryList[index].categoryTitles,style: TextStyle(fontWeight: FontWeight.bold,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.black,fontSize: 25,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
              }),
            )

          ]),
        )
    );
  }
}
