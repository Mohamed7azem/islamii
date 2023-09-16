import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home/hadeth/hadeth_tap.dart';
import 'package:islamii/home/quran/quran_tap.dart';
import 'package:islamii/home/radio/radio_tap.dart';
import 'package:islamii/home/tasbeh/tasbeh_tap.dart';
import 'package:islamii/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

            title: Text(AppLocalizations.of(context)!.app_title,
    style: MyTheme.ligthTheme.textTheme.titleLarge,
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
                label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),),
                label: AppLocalizations.of(context)!.hadeth
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png"),),
                    label: AppLocalizations.of(context)!.sebha
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png"),),
                    label: AppLocalizations.of(context)!.radio
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
