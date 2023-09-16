import 'package:flutter/material.dart';
import 'package:islamii/home/quran/sura_details_screen.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content,});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,


      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
