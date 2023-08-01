import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/AppIcon.dart';
import 'package:food_delivery/widgets/big_text.dart';

import '../../widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.toolbarHeight,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear) ,
                AppIcon(icon: Icons.shopping_cart_outlined) ,
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height20),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(Dimensions.radius20) , topRight:Radius.circular(Dimensions.radius20) ),
                  color: Colors.white
                ),
                padding: EdgeInsets.only(top: Dimensions.height10/2 , bottom: Dimensions.height10),
                child: Center(child: BigText(text: "Chinese Side", size: Dimensions.font26,)),
              ),
            ),
            backgroundColor:  AppColors.yellowColor,
            pinned: true,
            expandedHeight: Dimensions.expandedHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ) ,
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width20 , right:Dimensions.width20 ),
                  child: const ExpandableTextWidget(
                      text:
                      "Spaghetti is the quintessential Italian pasta. It is long – like a string (hence the name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find.name, as spago means string) – round in cross-section and made from durum wheat semolina. Commercial varieties are generally used, but artisanal versions are easy to find."),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              right:Dimensions.width20 * 2.5  ,
              left: Dimensions.width20 * 2.5 ,
              top: Dimensions.height10 ,
              bottom: Dimensions.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove ,  backGroundColor: AppColors.mainColor, iconColor: Colors.white,iconSize: Dimensions.font24,),
                BigText(text: "\$12.88 " + " X " + " 0" , color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(iconSize: Dimensions.font24 , icon: Icons.add ,  backGroundColor: AppColors.mainColor, iconColor: Colors.white,),
              ],
            ),
          ) ,
          Container(
            height: Dimensions.bottomHeight ,
            padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                ),
                color: AppColors.buttonBackgroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$ 10 | Add to Card",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
   
        ],
      ),
    );
  }
}
