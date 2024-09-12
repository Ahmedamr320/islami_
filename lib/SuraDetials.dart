import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/provider/my_provider.dart';
import 'package:islami_application/suramodel.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = "SuraDetails";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> vereses = [];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (vereses.isEmpty) {
      loadSuraFile(model.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.mode==ThemeMode.light?
                "assets/images/back_ground.png":
                "assets/images/home_dark_background.png",))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              model.name,
              style: GoogleFonts.elMessiri(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          body: Card(
            color: Color(0xffB7935F)
            ,
            margin: EdgeInsets.all(12),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text("${index+1} ${vereses[index]}",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inder(
                          fontSize: 25, fontWeight: FontWeight.w600));
                },
                itemCount: vereses.length),
          ),
        ));
  }

  loadSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.trim().split("\n");
    print(suraLines);
    vereses = suraLines;
    setState(() {});
  }
}
