import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class TRRNStatus extends StatelessWidget {
  const TRRNStatus({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("TRRN Status"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height/40),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Go to the Employer Provident Fund site : https://www.epfindia.com Here in the Our Services Section, Click on the link For Employers as shown below. Now in the Services Section, you can see two link TRRN Query (Up to December, 2016) and EPFO Establishment Search / TRRN Query",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Suppose you want to see status of your PF payment for which the challan had been generated before December 2016 then you will have to click the Link TRRN Query (Upto December, 2016) Here you will enter your TRRN no. and the captcha to see the status of the PF Challan payment as shown. You can also download the status as a PDF. Now to see the PF Challan payment status of the Challan prepared after December 2016, you will have to click the link EPFO Establishment Search / TRRN Query in the services section. After clicking on the link you will see a page as below, where you will have to click on the TRRN Search Now you can see the page where query link. you have to enter your TRRN along with the Captcha and click on Search button. Clicking on the search button will provide you the status of the PF Challan with TRRN number you entered along with other information such as Challan generated on, Establishment ID, Establishment Name, Challan Type, Total Members, Amount, Payment Confirmation Bank, CRN, Payment confirmed on and some more as shown below. Here you can also click on the Download PDF button on the upper right corner as shown above to download the receipt of payment and status of the PF Challan as shown below to keep for your records. This is how you can get the Provident Fund payment receipt and status using TRRN number.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("https://unifiedportal-epfo.epfindia.gov.in/fointerface/",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/30),
            ],
          ),
        ),
      ),
    );
  }
}
