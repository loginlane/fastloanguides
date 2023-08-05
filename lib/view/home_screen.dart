import 'package:fastloanguide/config/appcolor.dart';
import 'package:fastloanguide/controller/homescreen_controller.dart';
import 'package:fastloanguide/view/EMI/emicalculator_screen.dart';
import 'package:fastloanguide/view/aadharloan/loanonaadhar.dart';
import 'package:fastloanguide/view/applyloan/applyloanstep.dart';
import 'package:fastloanguide/view/bank/checkbalance.dart';
import 'package:fastloanguide/view/loanguide_screen.dart';
import 'package:fastloanguide/view/loannews_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Fast Loan Guide"),
            backgroundColor: AppColor.orangeColor,
            leading: const SizedBox()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height / 50),
                Container(
                  height: height / 4.5,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('asset/loanbanner.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(height: height / 50),
                AnimationLimiter(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    children: List.generate(6, (index) {
                      return AnimationConfiguration.staggeredGrid(
                          position: index,
                          columnCount: homeScreenController.catogoryList.length,
                          child: ScaleAnimation(
                            duration: const Duration(milliseconds: 2000),
                            child: FadeInAnimation(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: GestureDetector(
                                  onTap: () {
                                    if (index == 0) {
                                      Get.to(CheckBalance());
                                    } else if (index == 1) {
                                      Get.to(LoanGuideScreen());
                                    } else if (index == 2) {
                                      Get.to(const LoanNewsScreen());
                                    } else if (index == 3) {
                                      Get.to(LoanOnAadhar());
                                    } else if (index == 4) {
                                      Get.to(ApplyLoanStep());
                                    } else if (index == 5) {
                                      Get.to(EMICalcWidget());
                                    }
                                  },
                                  child: Container(
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: AppColor.orangeColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          homeScreenController
                                              .catogoryImageList[index],
                                          height: height / 10,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: height / 100),
                                        Center(
                                          child: Text(
                                            homeScreenController
                                                .catogoryList[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: height / 40),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ));
                    }),
                  ),
                ),
                SizedBox(height: height / 30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
