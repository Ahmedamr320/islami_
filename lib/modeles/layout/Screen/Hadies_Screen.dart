import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:islami_application/hadeth%20model.dart';

import '../../../HadithsDetales.dart';

class HadethScreen extends StatefulWidget {
  List<HadethModel> allAhadeth = [];

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> allAhadrth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadrth.isEmpty) {
redaHadethFile();
    }

    return Column(
      children: [
        Image.asset(
          "assets/images/hadith_header.png",
          height: 227,
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 39,
              child: Text(
                "الحديث",
                textAlign: TextAlign.left,
                style: GoogleFonts.elMessiri(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 4,
          height: 10,
          color: Color(0xffB7935F),
        ),
        Expanded(

          child:  ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 2,
              height: 10,
              color: Color(0xffB7935F),
            ),
            itemBuilder: (context, index) {
              return InkWell(
              onTap: (){
              Navigator.pushNamed(context,HadithsDetales.routeName,
              arguments: allAhadrth[index]);
              },
              child: Card(color:  Color(0xffB7935F),
                child: Text(
                allAhadrth[index].titel,
                textAlign: TextAlign.center,style: GoogleFonts.inder(
                fontSize: 25,fontWeight: FontWeight.w600,
                
                ),),
              ),
              );


            },
            itemCount: allAhadrth.length,
          ),
        )
      ],

    );
  }
void redaHadethFile() async{
String filecontent =await rootBundle.loadString("assets/files/ahadeth.txt");
List<String>seperatiedAhadeth =filecontent.split("#");
for(int i=0;i<seperatiedAhadeth.length;i++){
  String singelHadeth=seperatiedAhadeth[i];
  List<String>Lines=singelHadeth.trim().split("\n");
  String titel =Lines[0];
  Lines.removeAt(0);
  String content=Lines.join("\n");
  HadethModel h =(HadethModel(titel,content));
  allAhadrth.add(h);
}

setState(() {

});

  }
   }









