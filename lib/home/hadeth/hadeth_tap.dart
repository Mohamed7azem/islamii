import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset("assets/images/hadeth_logo.png")),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 4,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 4,
        ),
        ahadethList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ))
            : Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ItemHadethName(
                      hadeth: ahadethList[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    );
                  },
                  itemCount: ahadethList.length,
                ),
              ),
      ],
    );
  }

  void loadHadethFile() async {
    String ahadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = ahadethContent.split("#\r\n");
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethlines = hadethList[i].split("\n");
      String title = hadethlines[0];
      hadethlines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethlines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;
  Hadeth({required this.title, required this.content});
}
