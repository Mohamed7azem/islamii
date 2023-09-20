import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/settings/language_bottom_sheet.dart';
import 'package:islamii/settings/theme_bottom_sheet.dart';
class SettingsTap extends StatefulWidget {


  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Text(AppLocalizations.of(context)!.language,
           style: Theme.of(context).textTheme.titleMedium,
         ),
       SizedBox(height: 15,),
         InkWell(
           onTap: (){
             showLanguageBottomSheet(context);
           },
           child: Container(
             padding: EdgeInsets.all(8),
           decoration: BoxDecoration(
             color: Theme.of(context).primaryColor,
             borderRadius: BorderRadius.circular(15),
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(AppLocalizations.of(context)!.english,
               style: Theme.of(context).textTheme.titleMedium,
               ),
               Icon(Icons.arrow_drop_down),
             ],

           ),
       ),
         ),
         SizedBox(height: 15,),
         Text(AppLocalizations.of(context)!.theme,
           style: Theme.of(context).textTheme.titleMedium,
         ),
         SizedBox(height: 15,),
         InkWell(
           onTap: (){
             showThemeBottomSheet();
           },
           child: Container(
             padding: EdgeInsets.all(8),
             decoration: BoxDecoration(
               color: Theme.of(context).primaryColor,
               borderRadius: BorderRadius.circular(15),
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Dark",
                   style: Theme.of(context).textTheme.titleMedium,
                 ),
                 Icon(Icons.arrow_drop_down),
               ],

             ),
           ),
         ),
       ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) =>ThemeBottomSheet()
    );

  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context)=> LanguageBottomSheet(),
  );
}
