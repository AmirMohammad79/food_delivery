import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
   double size  ;
  double height;
  SmallText({Key? key, required this.text , this.size = 0 , this.color = const Color(0xFFccc7c5),this.height = 1.2 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text ,
      style: TextStyle(
          fontSize: size == 0 ? Dimensions.font12 : size,
          fontFamily: "Roboto",
          height:   height,
          color: color
      ),
    );
  }
}
