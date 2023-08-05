
import 'package:flutter/material.dart';

import 'config.dart';

class Mytheme extends ChangeNotifier{
  static bool isDark = false;

  Mytheme(){
    if(box.containsKey('currentTheme')){
      isDark =  box.get('currentTheme');
    }else{
      box.put('currentTheme',isDark);
    }
  }
  ThemeMode currentTheme() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme(){
    isDark = !isDark;
    box.put('currentTheme',isDark);
    notifyListeners();
  }



}