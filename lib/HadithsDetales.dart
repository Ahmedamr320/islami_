import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/hadeth%20model.dart';
import 'package:islami_application/provider/my_provider.dart';
import 'package:provider/provider.dart';

class HadithsDetales extends StatelessWidget {
  static String routeName = "HadethScreen";

  const HadithsDetales({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute .of(context) ?.settings.arguments as HadethModel;
    var provider=Provider.of<MyProvider>(context);
    return Expanded(
      child: Container(
          decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage(provider.mode==ThemeMode.light?
              "assets/images/back_ground.png":
          "assets/images/home_dark_background.png",
          )
          )),
          child: Scaffold(backgroundColor:  Colors.transparent,
            appBar: AppBar(backgroundColor: Colors.transparent,
              title: Text(model.titel.tr(),
                style: GoogleFonts.elMessiri(fontSize: 25,color: Colors.white),),
      
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
