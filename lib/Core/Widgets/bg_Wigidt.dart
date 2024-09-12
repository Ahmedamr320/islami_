import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

class BgWidgit extends StatelessWidget {
  Widget child;
   BgWidgit({super.key,required this.child
  });

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return  Container(width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage
                (provider.mode==ThemeMode.light?
              "assets/images/back_ground.png":
              "assets/images/home_dark_background.png",
              ),fit: BoxFit.cover
          )),
      child:child

      );

  }
}
