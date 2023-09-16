import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home/homescreen.dart';
import 'package:islamii/home/quran/sura_details_screen.dart';
import 'package:islamii/mytheme.dart';
import 'home/hadeth/Hadeth_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: HomeScreen.RouteName,
     routes: {
       HomeScreen.RouteName: (context) => HomeScreen(),
       SuraDetailsScreen.routeName:(context)=> SuraDetailsScreen(),
       HadethhDetailsScreen.routeName:(context)=> HadethhDetailsScreen(),
     },

     localizationsDelegates: AppLocalizations.localizationsDelegates,
     supportedLocales: AppLocalizations.supportedLocales,
     theme: MyTheme.ligthTheme,
     locale: Locale("ar"),
     );
  }

}