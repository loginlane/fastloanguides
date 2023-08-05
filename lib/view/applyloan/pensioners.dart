import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class Pensioners extends StatelessWidget {
  const Pensioners({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("Pensioners"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: height/40),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("The individual must be a part of the EPF scheme to be eligible for EPS. The employee does not contribute towards EPS, only the employee does. o Depending upon the employyes age and duration of service, he / she will be able to withdraw the EPS amount, or it can be carried forward to their next job. in case an individual changes jobs, only the EPF will be transferred to the new Employer, the EPS will not be transferred.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("EPS contributions stay with Employees, provident Fund Organization ( EPFO ) if an employee changes / her job.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("LINK : - https://passbook.epfindia.gov.in/pensionPaymentWnquiry/",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
