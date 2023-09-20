import 'package:flutter/material.dart';

class TasbehTap extends StatefulWidget {
  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  String tasbeehText = "سُبْحَانَ الله";
  int count =0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Center(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/head of seb7a.png"),
                Image.asset("assets/images/body of seb7a.png"),
              ],
            ),
            SizedBox(height: 10,),
            Text("عدد التسبيحات",style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold,

            ),),
    Container(
      color: Color(0xffB7935F),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$count",style: TextStyle(
            fontSize: 35,
            color: Colors.black26

          ),
          ),

        ],
      ),
    )
            ,
            SizedBox(height: 10,),
            InkWell(onTap: (){
              incrementCount();
              setState(() {

              });
            },
              child: Container(
                color: Color(0xffB7935F),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$tasbeehText",style: TextStyle(
                      fontSize: 35,
                      color: Colors.white


                    ),
                    ),

                  ],
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
  void incrementCount() {
    setState(() {
      count++;
      if (count % 33 == 0) {
        if (tasbeehText == 'سُبْحَانَ الله') {
          tasbeehText = 'َالْحَمْدُ لِلَّهِ';
        } else if (tasbeehText == 'َالْحَمْدُ لِلَّهِ') {
          tasbeehText = 'َاللهُ أَكْبَرُ ';
        } else {
          tasbeehText = 'سُبْحَانَ الله';
        }
      }
    });
  }

}

//" سُبْحَانَ اللهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا اللهُ، وَاللهُ أَكْبَرُ "