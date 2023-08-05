import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import 'Resources/config.dart';
import 'Resources/theme.dart';
import 'Views/mainpage.dart';

void main() async{
  Hive.init;
  box = await Hive.openBox('easyTheme');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Mytheme(),
        child: Consumer<Mytheme>(builder: (context,state,child){
          return MaterialApp(
              title: 'Celeto',
              debugShowCheckedModeBanner: false,
              // theme: ThemeData(
              //   primarySwatch: Colors.blue,
              // ),
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              themeMode: currentTheme.currentTheme(),
              home: const MainPage()
          );
        })
    );
  }
}


