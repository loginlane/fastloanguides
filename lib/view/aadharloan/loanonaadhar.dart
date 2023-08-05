import 'package:fastloanguide/config/appcolor.dart';
import 'package:fastloanguide/controller/loanonaadhar_controller.dart';
import 'package:fastloanguide/view/aadharloan/addhaaruidal.dart';
import 'package:fastloanguide/view/aadharloan/bankaccountpan.dart';
import 'package:fastloanguide/view/aadharloan/checkthestatus.dart';
import 'package:fastloanguide/view/aadharloan/multipleaderss.dart';
import 'package:fastloanguide/view/aadharloan/physicalcopyofaadhaar.dart';
import 'package:fastloanguide/view/aadharloan/requestforaadhaar.dart';
import 'package:fastloanguide/view/aadharloan/updatetheaddress.dart';
import 'package:fastloanguide/view/aadharloan/updateyouraadhaar.dart';
import 'package:fastloanguide/view/aadharloan/whatisaadhaar.dart';
import 'package:fastloanguide/view/aadharloan/whatmasked.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanOnAadhar extends StatelessWidget {
    LoanOnAadhar({super.key});

    LoanOnAadharController loanOnAadhaarController = Get.put(LoanOnAadharController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(elevation: 0,
        centerTitle: true,
        title: Text(
          "Loan On Aadhar",
          style: TextStyle(color: AppColor.whiteColor),
        ),
        backgroundColor: AppColor.orangeColor,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: loanOnAadhaarController.loanOnAaadharList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: height / 50),
                GestureDetector(
                  onTap: () {
                   if(index==0){
                     Get.to(const WhatIsAadhaar());
                   }else if(index == 1){
                     Get.to(const UpdateYourAadhaar());
                   }else if(index == 2){
                     Get.to(const CheckTheStatus());
                   }else if(index == 3){
                     Get.to(const UpdateTheAddress());
                   }else if(index == 4){
                     Get.to(const RequestForAadhaar());
                   }else if(index == 5){
                     Get.to(const AadhaarUIDL());
                   }else if(index == 6){
                     Get.to(const WhatMasked());
                   }else if(index == 7){
                     Get.to(const PhysicalCopyOfAadhaar());
                   }else if(index == 8){
                     Get.to(const BankAccountPan());
                   }else if(index == 9){
                     Get.to(const MultipleAddress());
                   }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: height/50),
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.orangeColor),
                    child: Center(
                      child: Text(
                        loanOnAadhaarController.loanOnAaadharList[index],textAlign: TextAlign.center,
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
      },),
    );
  }
}
