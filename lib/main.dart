
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home/homescreen.dart';
import 'package:islamii/home/quran/sura_details_screen.dart';
import 'package:islamii/mytheme.dart';
import 'package:islamii/provideres/app_confing_provider.dart';
import 'package:provider/provider.dart';
import 'home/hadeth/Hadeth_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main (){
  runApp(ChangeNotifierProvider(
    create:(context)=>AppConfigProvider() ,
      child: MyApp()));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
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
     locale: Locale(provider.appLanguage),
     themeMode:provider.appTheme,
     darkTheme: MyTheme.darkTheme,
     );
  }

}