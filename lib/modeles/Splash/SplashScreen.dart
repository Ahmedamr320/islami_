import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/modeles/layout/layout_screen.dart';
import 'package:islami_application/provider/my_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName="/";
  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.pushNamedAndRemoveUntil(context,LayoutScreen.routeName, (route)=>false);

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
var provider=Provider.of<MyProvider>(context);
    return Image.asset(
 provider.mode==ThemeMode.light?
 "assets/images/splash.png":
        "assets/images/bg_dark.png"

    );



  }
}
