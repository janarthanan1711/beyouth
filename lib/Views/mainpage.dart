import 'package:beyouth/Resources/colorresource.dart';
import 'package:beyouth/Views/cartpage.dart';
import 'package:beyouth/Views/search_page.dart';
import 'package:flutter/material.dart';

import '../Resources/theme.dart';
import 'accountspage.dart';
import 'category_page.dart';
import 'homepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;

  final totalPage=[
    HomePage(),
    CategoryPage(),
    AccountsPage(),
    CartPage(),

  ];

  void changePage(index){
    setState(() {
      pageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    Future<bool> showLogoutDialog() async{
      return await showDialog(context: context,
          barrierDismissible: false,
          builder: (BuildContext context){
            return AlertDialog(
              backgroundColor:  Mytheme.isDark == true ? Colors.white : Colors.black,
              titlePadding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
              title: CircleAvatar(
                radius: 35,
                backgroundImage: Mytheme.isDark == true ? AssetImage('assets/images/logout_orange.jpg') : AssetImage('assets/images/logout_blue.jpg'),
              ),
              content:  SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('Are you sure want to Logout?',style: TextStyle(fontSize: 20,color: Mytheme.isDark == true ? Colors.black : Colors.white),),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child:  Text('No',style: TextStyle(fontSize: 20,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.blue)),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                TextButton(
                  child:  Text('Yes',style: TextStyle(fontSize: 20,color: Mytheme.isDark == true ? ColorResource.colorYellow : Colors.blue)),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            );
          }

      )??false;
    }
    return WillPopScope(
      onWillPop: showLogoutDialog,
      child: Scaffold(
  body:totalPage[pageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          iconSize: 26,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.black,
          selectedFontSize: 20,
          unselectedFontSize: 14,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          items: const [
           BottomNavigationBarItem(
            backgroundColor: ColorResource.bottomNavcolor,
              icon: Icon(Icons.store),label: 'Home'),
           BottomNavigationBarItem(
              backgroundColor: ColorResource.bottomNavcolor,
              icon: Icon(Icons.category),label: 'Category'),
            BottomNavigationBarItem(
                backgroundColor: ColorResource.bottomNavcolor,
                icon: Icon(Icons.account_circle),label: 'Accounts'),
           BottomNavigationBarItem(
              backgroundColor:ColorResource.bottomNavcolor,
              icon: Icon(Icons.shopping_cart),label: 'Cart'),

        ],
          onTap: changePage,

        ),
      ),
    );
  }
}
