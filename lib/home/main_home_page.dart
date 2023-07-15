import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';

import '../widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("size is ::::::::::::: " + MediaQuery.of(context).size.height.toString()+ "/n with:::::::::::" + MediaQuery.of(context).size.height.toString());
    return  Scaffold(
      body:  Column(
        children: [
          //show header
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45 , bottom: 15),
              padding: const EdgeInsets.only(left: 20 ,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children:  [
                        BigText(text: "iran" , color: AppColors.mainColor),
                        Row(
                          children: [
                            SmallText(text: "yasuj" , color: Colors.black54),
                            Icon(Icons.arrow_drop_down_rounded , color: Colors.black54,)
                          ],
                        )
                      ],
                    ),
                  ),
                Center(
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor
                    ),
                    child: const Icon(Icons.search , color: Colors.white,),
                  ),
                )
                ],
              ),
            ),
          )  ,
          //show body
          FoodPageBody()
        ],
      ),
    );
  }
}
