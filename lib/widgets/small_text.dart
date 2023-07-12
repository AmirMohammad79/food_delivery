import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;
  SmallText({Key? key, required this.text , this.size = 12 , this.color = const Color(0xff332d2b) ,this.height = 1.2 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text ,
      style: TextStyle(
          fontSize: size,
          fontFamily: "Roboto",
          height:   height,
          color: color
      ),
    );
  }
}
