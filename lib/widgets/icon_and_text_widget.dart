import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final String text;
  final Color iconColor;
final IconData icon;
  const IconAndTextWidget({Key? key, required this.text,  required this.iconColor, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon , color: iconColor, size: Dimensions.iconSize24,) ,
         SizedBox(width: Dimensions.width5),
        SmallText(text: text),
      ],
    );
  }
}
