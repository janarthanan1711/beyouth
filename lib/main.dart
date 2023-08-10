import 'package:beyouth/Views/signinpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'Resources/config.dart';
import 'Resources/theme.dart';
import 'Views/mainpage.dart';
import 'Views/splashscreen.dart';

void main() async{

  if (kIsWeb) {
    box = await Hive.openBox('easyTheme');
  } else {
    WidgetsFlutterBinding.ensureInitialized();
    final documentDirectory = await getApplicationDocumentsDirectory();
    Hive.init(documentDirectory.path);
    box = await Hive.openBox('easyTheme');
  }
  // WidgetsFlutterBinding.ensureInitialized();
  // final documentDirectory = await getApplicationDocumentsDirectory();
  // Hive.init(documentDirectory.path);
  // box = await Hive.openBox('easyTheme');
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
              title: 'BeYouth',
              debugShowCheckedModeBanner: false,
              // theme: ThemeData(
              //   primarySwatch: Colors.blue,
              // ),
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              themeMode: currentTheme.currentTheme(),
              home: const SplashScreen()
          );
        })
    );
  }
}


