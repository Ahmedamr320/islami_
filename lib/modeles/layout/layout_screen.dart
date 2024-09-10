import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/Core/Widgets/bg_Wigidt.dart';
import 'package:islami_application/modeles/layout/Screen/Hadies_Screen.dart';
import 'package:islami_application/modeles/layout/Screen/QuranScreen.dart';
import 'package:islami_application/modeles/layout/Screen/RadioScreen.dart';
import 'package:islami_application/modeles/layout/Screen/Sebha_Screen.dart';
import 'package:islami_application/modeles/layout/Screen/Setting_Screen.dart';

class LayoutScreen extends StatefulWidget {
  static String routeName ="Layout";
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int SelectedIndex=0;
  List<Widget>screen =[
    QuranScreen(),
  HadethScreen(),
    RadioScreen(),
    SebhaScreen(),
    SettingScreen(),
  ];
  List<String> titles =[
    "Islami",
    "Hedeth",
    "Radio",
    "Sebha",
    "Settings",

  ];
  @override

  Widget build(BuildContext context) {
    return BgWidgit(
      child: Scaffold(
        appBar: AppBar(
        title: Text(
          titles[SelectedIndex],
        )
        ),

        bottomNavigationBar: BottomNavigationBar(
            onTap: (Value){
          SelectedIndex = Value;
          setState(() {

          });
            },
currentIndex: SelectedIndex,
            items:  const [

                BottomNavigationBarItem
                (icon: ImageIcon(AssetImage("assets/icons/iconQuran.png"),),label: "quran"),
   BottomNavigationBarItem
                (icon: ImageIcon(AssetImage("assets/icons/quran-quran-svgrepo-com.png"),),label: "Hadeth"),
 BottomNavigationBarItem
                (icon: ImageIcon(AssetImage("assets/icons/radio_blue.png"),),label: "Radio"),
              BottomNavigationBarItem
                (icon: ImageIcon(AssetImage("assets/icons/sebha_blue.png"),),label: "Sebha"),
              BottomNavigationBarItem
                (icon: Icon(Icons.settings),label: "Setting"),


            ]),
        body: screen[SelectedIndex],
      ),
    );

  }
}
