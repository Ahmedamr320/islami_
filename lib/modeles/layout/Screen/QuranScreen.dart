import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/SuraDetials.dart';
import 'package:islami_application/suramodel.dart';

class QuranScreen extends StatelessWidget {
   QuranScreen({super.key});
List<String> suraNames = [
  "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر", "فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset("assets/images/quran_header_icn.png"
      ,height: 227,),
        Divider(thickness: 3,
        color: Color(0xffB7935F),),
 Row(mainAxisAlignment: MainAxisAlignment.center,
   children: [
     SizedBox(height: 39,
       child: Text("sura_name".tr(),
         textAlign: TextAlign.left,
       style: GoogleFonts.elMessiri(
         fontSize: 28,fontWeight: FontWeight.w500,
       ),),
     ),

   ],
 ),
 Divider(thickness: 4,height: 10,
        color: Color(0xffB7935F),),

        Expanded(
          child: ListView.separated(
            separatorBuilder:(context , index){
              return Row(
                children: [
                  Icon(Icons.star,color: Color(0xffB7935F),),
                  Expanded(
                    child: Divider(
                      indent: 50,
                        endIndent: 50,
                      thickness: 8,

                        color: Color(0xffB7935F),

                        ),
                  ),
                  Icon(Icons.star,color: Color(0xffB7935F),),
                ],
              );
    },




              itemBuilder:(context,index ){
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SuraDetails.routeName,
                    arguments: SuraModel(suraNames[index],index));
                  },
                  child: Text(
                    suraNames[index],textAlign: TextAlign.center,style: GoogleFonts.inder(
                    fontSize: 25,fontWeight: FontWeight.bold,
                    
                  
                  
                  ),),
                );
          
                  },
            
              itemCount: 114,
          ),
        )

        
      ],


    );
  }
}
