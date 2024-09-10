
import 'package:flutter/material.dart';

import '../../../Core/Theme/App_Theme.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
children: [Text("Theme",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
Container(width: double.infinity,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
border: Border.all(color: AppTheme.primaryColor)
),

    )
]

      
    );


  }
}