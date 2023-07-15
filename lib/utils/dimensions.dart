import 'package:get/get.dart';
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight /2.735;
  static double pageViewContainer = screenHeight /3.979;
  static double pageViewTextContainer = screenHeight /7.295;

  // dynamic height and padding and margin
static double height10 = screenHeight /87.542;
static double height15 = screenHeight /58.361;
static double height20= screenHeight /43.771;
static double height30 = screenHeight /29.180;
static double height45 = screenHeight /19.453;

// dynamic width and padding and margin
  static double width5 = screenHeight /175.085;
  static double width10 = screenHeight /87.542;
  static double width15 = screenHeight /58.361;
  static double width20= screenHeight /43.771;
  static double width30 = screenHeight /29.180;
  static double width45 = screenHeight /19.453;

//dynamic font
  static double font20= screenHeight /43.771;
  static double font12= screenHeight /72.952;

  // dynamic icons size
  static double iconSize24= screenHeight /36.476;

// dynamic radius
  static double radius15 = screenHeight /58.361;
  static double radius20= screenHeight /43.771;
  static double radius30 = screenHeight /29.180;
  // dynamic DotsIndicator
  static double dotsIndicator9 = screenHeight /97.269;
  static double dotsIndicator18 = screenHeight /48.634;
}