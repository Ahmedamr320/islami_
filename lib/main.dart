import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/Core/Theme/App_Theme.dart';
import 'package:islami_application/SuraDetials.dart';
import 'package:islami_application/modeles/layout/layout_screen.dart';
import 'package:islami_application/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'HadithsDetales.dart';
import 'modeles/Splash/SplashScreen.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await EasyLocalization.ensureInitialized();
  runApp( EasyLocalization(
      supportedLocales: [
    const Locale("ar"), const Locale("en"),
  ],
startLocale: const Locale("en"),
      path: "assets/translations",
      saveLocale: true,
      fallbackLocale: Locale('en', 'US'),
      child: ChangeNotifierProvider(
          create:(context)=>MyProvider(),

          child: MyApp())));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override

  Widget build(BuildContext context) {

var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: provider.mode,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        LayoutScreen.routeName: (_) => const LayoutScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        HadithsDetales.routeName: (_) => const HadithsDetales(),
      },
      initialRoute: SplashScreen.routeName,


    );
  }
}
