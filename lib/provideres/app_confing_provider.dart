import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = "en" ;
  ThemeMode appTheme = ThemeMode.dark;
  void changeLanguage (String nemLanguage){
    if(appLanguage == nemLanguage){
      return;
    }
appLanguage = nemLanguage;
    notifyListeners();
  }

  void changeTheme(ThemeMode newMode){
    if(appTheme == newMode){
      return ;
    }
    appTheme = newMode;
    notifyListeners();
  }

bool isDarkMode(){
    return  appTheme == ThemeMode.dark;
}
}