import 'package:fastloanguide/config/appcolor.dart';
import 'package:fastloanguide/controller/loanguide_controller.dart';
import 'package:fastloanguide/view/loantype/businessloan.dart';
import 'package:fastloanguide/view/loantype/carfinanceloan.dart';
import 'package:fastloanguide/view/loantype/education.dart';
import 'package:fastloanguide/view/loantype/homeloan.dart';
import 'package:fastloanguide/view/loantype/paydayloan.dart';
import 'package:fastloanguide/view/loantype/personalloan.dart';
import 'package:fastloanguide/view/loantype/securedloan.dart';
import 'package:fastloanguide/view/loantype/termloan.dart';
import 'package:fastloanguide/view/loantype/unsecuredebtloan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanGuideScreen extends StatelessWidget {
  LoanGuideScreen({super.key});

  LoanGuideController loanGuideController = Get.put(LoanGuideController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.orangeColor,
          elevation: 0,
          title: const Text("Loan Guide"),
        ),
        body: ListView.builder(
          itemCount: loanGuideController.loantypeList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(height: height / 50),
                  GestureDetector(
                    onTap: () {
                      if(index == 0){
                        Get.to(HomeLoan());
                      }else if(index == 1){
                        Get.to(PersonalLoanScreen());
                      }else if(index == 2){
                        Get.to(EducationLoanScreen());
                      }else if(index == 3){
                        Get.to(BusinessLoanScreen());
                      }else if(index == 4){
                        Get.to(CarFinanceLoanScreen());
                      }else if(index == 5){
                        Get.to(UnsecureddebtloanScreen());
                      }else if(index == 6){
                        Get.to(TermsLoanScreen());
                      }else if(index == 7){
                        Get.to(PayDayLoanScreen());
                      }else if(index == 8){
                        Get.to(securedLoanScreen());
                      }
                    },
                    child: Container(
                      height: height / 12,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.orangeColor),
                      child: Center(
                        child: Text(
                          loanGuideController.loantypeList[index],
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
        ));
  }
}
