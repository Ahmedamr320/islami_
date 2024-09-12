
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaScreen extends StatefulWidget {
SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
int count=0;
double turn =0;
final List<String>azkar=["الله اكبر","لا إله الا الله","الحمد لله","سبحان الله"];

int index=0;

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
               padding:  const EdgeInsets.only(right: 175,left: 175
               ),
               child: Image.asset("assets/images/head of seb7a.png",),
             ),

            Padding(
              padding: const EdgeInsets.only(
                top: 15,left: 2
              ),
              child:AnimatedRotation(duration: Duration(microseconds: 500),
                  turns: turn,
                  child: Image.asset("assets/images/body of seb7a.png",)),
            ),
          ],
          ),
      ),
    ),

 Expanded(child: Column(
   children: [Column(
     children: [
       Text("عدد التسبيحات"
       ,style: TextStyle(fontSize: 30),
       ),
     ],
   ),
     Padding(
       padding: const EdgeInsets.only(top: 10),
       child: Container
         (padding: EdgeInsets.all(25),
         decoration: BoxDecoration(
         color: Theme.of(context).primaryColor,
         borderRadius: BorderRadius.circular(24)
         ),
         child: Text(   count.toString(),
         )
       ),
     ),
     SizedBox(height: 28,),
     ElevatedButton(
       style: ElevatedButton.styleFrom(
         backgroundColor: Theme.of(context).primaryColor
       ),
       onPressed: (){
         setState(() {
           count++;
           turn+=.023;
           if(count==34){
              count=0;
              index++;
              if(index==azkar.length){
                index=0;
              }
           }
         });
       },
         child: Text(   azkar[index],
           style: GoogleFonts.inter(
             color: Colors.white,fontSize: 34,
               fontWeight: FontWeight.bold
           ),
         ),
     ),
   ],
 )
 ),


    ],);
  }
}