import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/quran/item_sura_details.dart';
import 'package:islamii/mytheme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "Suradatalis";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuradetailsArgs;
    if(verses.isEmpty) {
      loadfile(args.index);
    }
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
            "${args.name}",
            style: MyTheme.ligthTheme.textTheme.titleLarge,
          ),
        ),
        body: verses.length == 0 ?
            Center(child: CircularProgressIndicator()) :

        Container(

          decoration: BoxDecoration(
            color: MyTheme.whiteColor,
            borderRadius: BorderRadius.circular(25),
            
          ),
          margin: EdgeInsets.symmetric(
            vertical:MediaQuery.of(context).size.height*0.08 ,
              horizontal: MediaQuery.of(context).size.width*0.05,
          ),

          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: Theme.of(context).primaryColor,
                thickness: 2,
              );
            },
            itemBuilder: ((context,index){
            return ItemSuraDetails(content: verses[index],index: index,);

          }),
            itemCount:verses.length ,
          ),
        ),
      )
    ]);
    ;
  }

  void loadfile(int index) async {
    String content =  await rootBundle.loadString("assets/files/${index+1}.txt");
   List<String> lines =content.split("\n");
   verses =lines;
   setState(() {

   });
  }
}
class SuradetailsArgs{
  String name;
  int index;
  SuradetailsArgs({required this.name,required this.index});
  
}
