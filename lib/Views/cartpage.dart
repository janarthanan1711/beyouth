import 'package:flutter/material.dart';

import '../Modals/cartpagemodel.dart';
import '../Resources/colorresource.dart';
import '../commonwidgets/cartList.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  List<CartModel> gettedAddedList=[
    CartModel('Jogger', 'assets/images/joggers.jpeg', 549, 'black', 'M'),
    CartModel('Jogger', 'assets/images/joggers.jpeg', 549, 'black', 'M'),
    CartModel('Jogger', 'assets/images/joggers.jpeg', 549, 'black', 'M')

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.bottomNavcolor,
        title: const Text('Cart'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30,color: ColorResource.colorYellow,fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartList(cartmodelDatas: gettedAddedList,)
          ],
        ),
      ),
    );
  }
}
