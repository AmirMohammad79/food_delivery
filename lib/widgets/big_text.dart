import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overFlow;
   BigText({Key? key, required this.text , this.size = 20 , this.color = const Color(0xff332d2b) ,this.overFlow = TextOverflow.ellipsis }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text ,
      overflow: overFlow,
      maxLines: 1,
      style: TextStyle(
        fontSize: size,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400,
        color: color
      ),
    );
  }
}
