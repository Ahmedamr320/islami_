
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,
    children: [Expanded(flex: 2,
      child: Align(
        alignment: Alignment.topCenter,
        child:
          Stack(clipBehavior: Clip.none,
              children: [
             Padding(
               padding:  EdgeInsets.only(left: 180
               ),
               child: Image.asset("assets/images/head of seb7a.png",),
             ),

            Padding(
              padding: const EdgeInsets.only(
                top: 29,left: 2
              ),
              child: Image.asset("assets/images/body of seb7a.png",),
            ),
          ],

          ),


      ),

    ),
 Expanded(child: Column(
   children: [
     Container()
   ],
 )),


    ],);
  }
}