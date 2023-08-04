import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/appcolor.dart';
import 'char.dart';

class OutputWidget extends StatelessWidget {

  late Map<String,double> dataMap;
  late String loanEMI;
  late String interestPayable;
  late String totalPayment;

  OutputWidget(Map<String,double> dataMap,double loanEMI,double interestPayable,double totalPayment){
    this.dataMap = dataMap;
    this.loanEMI = loanEMI.toStringAsFixed(2);
    this.interestPayable = interestPayable.toStringAsFixed(2);
    this.totalPayment = totalPayment.toStringAsFixed(2);
  }

  _getResultBox(Size deviceSize,{required String heading,required String value}){
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        height: 90,
        width: deviceSize.width/2 - 20,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColor.orangeColor,
            ),
            borderRadius: BorderRadius.circular(10)
        ) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(heading,textAlign: TextAlign.center,style: _getStyle(size: 18, color: AppColor.orangeColor),),
            Text(value,style: _getStyle(size: 18, color: Colors.black),)
          ],
        ),
      ),
    );
  }

  _getStyle({required double size,required Color color, FontWeight = FontWeight.bold}){
    return GoogleFonts.oswald(fontSize: size,fontWeight: FontWeight,color : color);
  }


  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _getResultBox(deviceSize,heading: 'Loan EMI',value : loanEMI),
            _getResultBox(deviceSize,heading: 'Interest Payable',value : interestPayable),
            _getResultBox(deviceSize,heading: 'Total Payable Amount',value: totalPayment),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Break-up for total Payment',style: _getStyle(size: 15, color: Colors.black, FontWeight: FontWeight.bold)),
            dataMap.isEmpty? const SizedBox(): Piechart(dataMap)
          ],
        )
      ],
    );
  }
}