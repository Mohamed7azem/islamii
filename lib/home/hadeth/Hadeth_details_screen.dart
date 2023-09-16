import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/hadeth/hadeth_tap.dart';
import 'package:islamii/home/hadeth/item_hadeth_details.dart';
import 'package:islamii/home/quran/item_sura_details.dart';
import 'package:islamii/mytheme.dart';

class HadethhDetailsScreen extends StatefulWidget {
  static const String routeName = "hadetghdatalis";

  @override
  State<HadethhDetailsScreen> createState() => _HadethhDetailsScreenState();
}

class _HadethhDetailsScreenState extends State<HadethhDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        "assets/images/main_background.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
          args.title,
            style: MyTheme.ligthTheme.textTheme.titleLarge,
          ),
        ),
        body:
        Container(

          decoration: BoxDecoration(
            color: MyTheme.whiteColor,
            borderRadius: BorderRadius.circular(25),
            
          ),
          margin: EdgeInsets.symmetric(
            vertical:MediaQuery.of(context).size.height*0.08 ,
              horizontal: MediaQuery.of(context).size.width*0.05,
          ),

          child: ListView.builder(

            itemBuilder: ((context,index){
            return ItemHadethDetails(content: args.content[index]);

          }),
            itemCount:args.content.length,
          ),
        ),
      )
    ]);
    ;
  }


}

