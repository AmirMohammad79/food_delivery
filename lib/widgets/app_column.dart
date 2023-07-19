import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final double titleSize;
  const AppColumn({Key? key, required this.text, this.titleSize = 0 })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text , size: titleSize,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: Dimensions.iconSize24,
                      )),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "comment")
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                text: "Normal",
                iconColor: AppColors.iconColor1,
                icon: Icons.circle_sharp),
            IconAndTextWidget(
                text: "1.7km",
                iconColor: AppColors.mainColor,
                icon: Icons.location_on),
            IconAndTextWidget(
                text: "32min",
                iconColor: AppColors.iconColor2,
                icon: Icons.access_time_filled_rounded),
          ],
        )
      ],
    );
  }
}
