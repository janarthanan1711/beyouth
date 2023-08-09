import 'dart:async';

import 'package:beyouth/Views/signinpage.dart';
import 'package:flutter/material.dart';

import '../Resources/colorresource.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,duration: const Duration(seconds: 3)
    );
    _animationController.forward();
    Timer(const Duration(
      seconds: 4
    ), (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  const SigninPage()),
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
     return Scaffold(
       body: Container(
         width: screenWidth,
         decoration: BoxDecoration(
           gradient: LinearGradient(
               colors: [
                 ColorResource.colorYellow.withOpacity(.700),
                 Colors.black.withOpacity(0.900),
               ],
               begin: Alignment.topRight,
               end: Alignment.bottomLeft
           ),
         ),
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               ScaleTransition(scale: Tween<double>(begin: 0,end: 1).animate(
                 CurvedAnimation(parent: _animationController, curve: Curves.easeInOut)
               ),child: Image.asset('assets/images/logobeyouth.png',height: 300,),
               ),
               SizedBox(height: 40,),
         ScaleTransition(
           scale: Tween<double>(begin: 0,end: 1).animate(
               CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut)
           ),
           child: RichText(text: const TextSpan(
               text: 'BE',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),
               children: [
                 TextSpan(
                   text: 'YOUTH',style: TextStyle(color: ColorResource.ratingColor,fontSize: 50,fontWeight: FontWeight.bold),
                 )
               ]
           ),
           ),
         ),
             ],
           ),
         ),
       ),
       bottomNavigationBar: Container(
         color: Colors.transparent,
         height: 20,
         child: Text('Powered by @chand.com',textAlign: TextAlign.center,),
       ),
     );
  }
}
