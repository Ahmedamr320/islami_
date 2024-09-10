import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color primaryColor=Color(0xffB7935F);
  static Color yellowColor=Color(0xffFACC1D);
  static Color primary_darckColor=Color(0xff141A2E);
  static Color blackColor=Colors.black;
  static ThemeData lightTheme =ThemeData(
    primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      appBarTheme: AppBarTheme(

        backgroundColor: Colors.transparent,

        centerTitle: true,
        elevation: 0,
          titleTextStyle:GoogleFonts.elMessiri(
        fontSize: 35,fontWeight: FontWeight.bold,color: const Color(0xff242424),)

      ),

      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        unselectedItemColor: const Color(0xffF8F8F8),
        showUnselectedLabels: false,
        backgroundColor: primaryColor,
      )
      );


    static ThemeData darkTheme =ThemeData(
      dividerColor:yellowColor,
     primaryColor: primary_darckColor,
     scaffoldBackgroundColor:Colors.transparent,

      fontFamily: GoogleFonts.elMessiri().fontFamily,
      appBarTheme:  AppBarTheme(
        backgroundColor: Colors.transparent,

        centerTitle: true,
        elevation: 0,
        titleTextStyle:GoogleFonts.elMessiri(   fontSize: 30,fontWeight: FontWeight.bold,color: const Color(0xff242424),)

      ),

      bottomNavigationBarTheme:    const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff141A2E),
        selectedItemColor:  Color(0xffFACC1D),
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,


      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontWeight:FontWeight.w700,fontSize: 30,
          color: Colors.white
        ),
        bodyMedium:  GoogleFonts.elMessiri(
        fontWeight:FontWeight.w600,fontSize: 25,
  color: Colors.white
      ),


      ),
  );
}
