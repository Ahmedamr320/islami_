import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Theme/App_Theme.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 450,
        child: Column(
          children: [
            InkWell(
              onTap:()
          {context.setLocale(Locale("ar"));
            Navigator.pop(context);
          },
              child: Row(
              children: [
              Text("arabic".tr(),
                style:
                    TextStyle(fontSize: 30,
                      color:primaryColor,fontWeight: FontWeight.bold,),),



                      ]
              ,),
            ),

               // color:primaryColor,
               InkWell(onTap: (){
            context.setLocale(Locale("en"));
            },
            child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("english".tr(),style: TextStyle(color: Color(0xffB7935F),
                fontSize: 30,fontWeight: FontWeight.bold))
            ],
            ),
            ),
               )
            ],

        ),
      )


    );

  }
}
