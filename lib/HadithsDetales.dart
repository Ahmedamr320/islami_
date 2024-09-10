import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/hadeth%20model.dart';

class HadithsDetales extends StatelessWidget {
  static String routeName = "HadethScreen";

  const HadithsDetales({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute .of(context) ?.settings.arguments as HadethModel;

    return Expanded(
      child: Container(
          decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/images/back_ground.png"))),
          child: Scaffold(backgroundColor:  Colors.transparent,
            appBar: AppBar(backgroundColor: Colors.transparent,
              title: Text(model.titel.tr(),
                style: GoogleFonts.elMessiri(fontSize: 25),),
      
            ),
            body: ListView.builder(itemBuilder: (context, index) {
              return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(color: ( Color(0xffB7935F)),
                      child: Center(child: Text(model.content,
                        style:TextStyle(fontSize: 25),),))
                  ,
                );
            },

              itemCount:model.content.length

            ),
      
          )
      
      ),
    );
  }

}
