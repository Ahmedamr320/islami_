import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/provider/my_provider.dart';
import 'package:provider/provider.dart';

import '../../../../Core/Theme/App_Theme.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 512,
        child:
        Column(
          children: [
            InkWell(
              onTap: (){
                pro.changeTheme(ThemeMode.light);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Light",
                  style:
                  TextStyle(fontSize: 30, color:primaryColor,fontWeight: FontWeight.bold,),

                ),


              ]
              ,),
            ),
            const SizedBox(height: 28,),
            InkWell(onTap: (){
              pro.changeTheme(ThemeMode.dark);
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dark",style:
                  TextStyle(fontSize: 30, //color:primaryColor
                    fontWeight: FontWeight.bold,color: primaryColor,),),
                ],),
            )
          ],
        ),
      ),
    );

  }
}
