import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home/homescreen.dart';
import 'package:islamii/mytheme.dart';

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
     },
     theme: MyTheme.ligthTheme,
     );
  }

}