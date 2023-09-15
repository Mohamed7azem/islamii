import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home/quran/hadeth_tap.dart';
import 'package:islamii/home/quran/quran_tap.dart';
import 'package:islamii/home/quran/radio_tap.dart';
import 'package:islamii/home/quran/tasbeh_tap.dart';
import 'package:islamii/mytheme.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName = "routename";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_background.png",
        width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(

            title: Text("Islami",
    style: Theme.of(context).textTheme.titleLarge,

            ),

            ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){

                selectedIndex = index;
                setState(() {

                });

              },

              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),),
                label: "Quran"),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),),
                label: "Hadeth"
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png"),),
                    label: "Tasbeh"
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png"),),
                    label: "Radio"
                ),
              ],
            ),
          ),
body: tabs[selectedIndex],

          ),
      ],

    );
  }
  List<Widget> tabs = [
    QuranTap(),HadethTap(),TasbehTap(),RadioTap(),
  ];
}
