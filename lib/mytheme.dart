import 'package:flutter/material.dart';

class MyTheme{
  static Color blackColor = Color(0xff242424);
  static Color primaryDark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

  static Color primaryLight = Color(0xffB7935F);
  static Color whiteColor = Colors.white;

 static ThemeData ligthTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
   primaryColor: primaryLight,

   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     elevation: 0,
     centerTitle: true,
     iconTheme: IconThemeData(color: blackColor),
   ),
   textTheme: TextTheme(
     titleLarge: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.w700,
       color: blackColor,

     ),
     titleMedium: TextStyle(
       fontSize: 25,
       fontWeight: FontWeight.w600,
       color: blackColor,


     ),
     titleSmall: TextStyle(
       fontSize: 25,
       fontWeight: FontWeight.w400,
       color: blackColor,


     ),

   ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: blackColor,
     unselectedItemColor:whiteColor ,
     selectedLabelStyle:TextStyle(fontSize: 20) ,

   ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryDark,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: blackColor),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: whiteColor,

      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: whiteColor,


      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: yellowColor,


      ),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor:whiteColor ,
      selectedLabelStyle:TextStyle(fontSize: 20) ,

    ),
  );
}