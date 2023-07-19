import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSiz,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/food0.png"
                  ),
                )
              ),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Container(
            padding: EdgeInsets.only(
                top: Dimensions.height15,
                left: Dimensions.width15,
                right: Dimensions.width15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chinese Side"),
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
            ),
          ),)
        ],
      ),
    );
  }
}
