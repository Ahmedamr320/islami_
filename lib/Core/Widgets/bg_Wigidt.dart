import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BgWidgit extends StatelessWidget {
  Widget child;
   BgWidgit({super.key,required this.child
  });

  @override
  Widget build(BuildContext context) {
    return  Container(width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage( "assets/images/back_ground.png"),fit: BoxFit.cover
          )),
      child:child

      );

  }
}
