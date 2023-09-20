import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Image.asset("assets/images/radio.png"),
        SizedBox(height: 10,),
        Text("إذاعة القرآن الكريم",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).primaryColor),
        ),

        Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.skip_previous,size: 40,),
            Icon(Icons.play_arrow,size: 40,),
            Icon(Icons.skip_next,size: 40,),
          ],
        ),


      ],
    );
  }
}
