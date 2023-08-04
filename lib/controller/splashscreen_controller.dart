import 'dart:async';
import 'package:fastloanguide/view/onbonding.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(const Duration(seconds: 5),()=> Get.to(OnboardScreen()));
  }
}