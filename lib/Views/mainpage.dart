import 'package:beyouth/Resources/colorresource.dart';
import 'package:beyouth/Views/cartpage.dart';
import 'package:flutter/material.dart';

import 'accountspage.dart';
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
    Text('hii'),
    CartPage(),
    AccountsPage()
  ];

  void changePage(index){
    setState(() {
      pageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:totalPage[pageIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        backgroundColor: Colors.orange,
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
            icon: Icon(Icons.search),label: 'Search'),
         BottomNavigationBarItem(
            backgroundColor:ColorResource.bottomNavcolor,
            icon: Icon(Icons.shopping_cart),label: 'Cart'),
         BottomNavigationBarItem(
            backgroundColor: ColorResource.bottomNavcolor,
            icon: Icon(Icons.account_circle),label: 'Accounts')
      ],
        onTap: changePage,

      ),
    );
  }
}
