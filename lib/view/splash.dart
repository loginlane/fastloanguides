
import 'package:fastloanguide/config/appcolor.dart';
import 'package:fastloanguide/controller/splashscreen_controller.dart';
import 'package:fastloanguide/pakeges_files/wavyamimation.dart';
import 'package:fastloanguide/pakeges_files/wavytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlashScreen extends StatelessWidget {
  PlashScreen({super.key});

  SplashScreenController splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColor.orangeColor,
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(size: height/4),
            SizedBox(height: height/30),
            Center(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 25.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText("Easy & Quick Loan Guide",textStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        speed: const Duration(milliseconds: 200)),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ),
            ),
          ],
        ));
  }
}
