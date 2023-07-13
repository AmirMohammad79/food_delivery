import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.redAccent,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven
                ? const Color(0xff69c5df)
                : const Color(0xff9294cc),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/food0.png"),
            )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 130,
              margin: const EdgeInsets.only(left: 30, right: 30 , bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
