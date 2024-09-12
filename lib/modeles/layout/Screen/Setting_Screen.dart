
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../Core/Theme/App_Theme.dart';
import 'bottomSheet/Language_BottomSheet.dart';
import 'bottomSheet/ThemeBottonsheet.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
Padding(
    padding: EdgeInsets.only(right: 25,top: 30),
    child: Text("theme".tr(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
  ),
Padding(
  padding: const EdgeInsets.only(top:20),
  child: InkWell(
    onTap: (){showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    builder: (context){
    return ThemeBottomSheet();
    }
    );},
    child: InkWell( onTap: (){
showModalBottomSheet(context: context,
    isDismissible: true,
    isScrollControlled: true,
    backgroundColor:Colors.white ,
    builder: (context){
  return  ThemeBottomSheet();

});
    },
      child: Container(height: 70,width: double.infinity,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppTheme.primaryColor)
      ),
      child:Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("light".tr(),style:
        TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),),
      ),
          ),
    ),
  ),
),
    Padding(
    padding: EdgeInsets.only(right: 25,top: 30),
    child: Text("language".tr(),
      style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    ),
    Padding(
    padding: const EdgeInsets.only(top:20),
    child: InkWell(
      onTap: (){showModalBottomSheet(
      backgroundColor:Colors.white,
        context: context,
        builder: (context){
          return LanguageBottomSheet();
        }
    );},
      child: InkWell(onTap: (){
        showModalBottomSheet(context: context,
            isDismissible: true,
            isScrollControlled: true,
            backgroundColor:Colors.white ,

            builder: (context){
              return LanguageBottomSheet();

            });
      },
        child: Container(height: 70,width: double.infinity,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppTheme.primaryColor)
        ),
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("arabic".tr(),style:
        const TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),),
        ),
        ),
      ),
    )
    )
]

      
    );


  }
}