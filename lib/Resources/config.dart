
import 'package:beyouth/Resources/favoriteadd.dart';
import 'package:beyouth/Resources/theme.dart';
import 'package:hive/hive.dart';

Mytheme currentTheme = Mytheme();
FavoriteList favoriteData = FavoriteList();
Box box = Hive.openBox('easyTheme') as Box;

