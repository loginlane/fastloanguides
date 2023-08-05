import 'dart:ui';

import 'package:fastloanguide/config/appcolor.dart';
import 'package:fastloanguide/controller/checkbalance_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CheckBalance extends StatelessWidget {
  CheckBalance({super.key});

  CheckBalanceController checkBalanceController =
      Get.put(CheckBalanceController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Balance"),
        backgroundColor: AppColor.orangeColor,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: checkBalanceController.bankList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: height / 50),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: height / 50),
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.orangeColor),
                    child: Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(checkBalanceController.bankImageList[index],height: height/25),
                          SizedBox(width: width/20),
                          Text(checkBalanceController.bankList[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: height / 40),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height / 50),
              ],
            ),
          );
        },
      ),
    );
  }
}
