
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
     Column(crossAxisAlignment: CrossAxisAlignment.center,
       children: [
           Expanded(child:
       Container(height: double.infinity,
         decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/Radio.png"))),)),

         SizedBox(height: 60,
           child: Container(
             child:
             Text("إذاعه القران الكريم",style: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.w600),
               )

           ),
         ),



         Expanded(
           child: SizedBox(height: 50,
             child: Container(
               decoration: BoxDecoration(image: DecorationImage(
                   image:AssetImage("assets/images/Radio_Audio.png"))),
             ),
           ),
         ),
       ],

          ),



    );
  }
}