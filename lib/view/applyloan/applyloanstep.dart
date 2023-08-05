import 'package:fastloanguide/config/appcolor.dart';
import 'package:fastloanguide/controller/applyloan_controller.dart';
import 'package:fastloanguide/view/applyloan/activeuna.dart';
import 'package:fastloanguide/view/applyloan/balanceonline.dart';
import 'package:fastloanguide/view/applyloan/pensioners.dart';
import 'package:fastloanguide/view/applyloan/trrnStatus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplyLoanStep extends StatelessWidget {
  ApplyLoanStep({super.key});

  ApplyLoanController applyLoanController = Get.put(ApplyLoanController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("Apply Loan"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: applyLoanController.applyLoanList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: height / 50),
                GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      Get.to(const ActiveUna());
                    } else if (index == 1) {
                      Get.to(const BalanceOnline());
                    } else if (index == 2) {
                      Get.to(const Pensioners());
                    } else if (index == 3) {
                      Get.to(const TRRNStatus());
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: height / 50),
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.orangeColor),
                    child: Center(
                      child: Text(
                        applyLoanController.applyLoanList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: height / 40),
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
