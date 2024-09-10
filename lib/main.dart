import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/Core/Theme/App_Theme.dart';
import 'package:islami_application/SuraDetials.dart';
import 'package:islami_application/modeles/layout/layout_screen.dart';

import 'HadithsDetales.dart';
import 'modeles/Splash/SplashScreen.dart';


void main() {
  runApp( EasyLocalization(supportedLocales: [
    Locale("ar"),
    Locale("en"),
  ],
startLocale: Locale("en"),
      path: "assets/translations",
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: ThemeMode.light,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        LayoutScreen.routeName: (_) => LayoutScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadithsDetales.routeName: (_) => HadithsDetales(),
      },
      initialRoute: SplashScreen.routeName,


    );
  }
}
