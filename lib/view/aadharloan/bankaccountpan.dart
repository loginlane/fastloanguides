import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class BankAccountPan extends StatelessWidget {
  const BankAccountPan({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("Does linking my bank account, PAN and other services with Aadhaar make me unsafe?"),
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
                Expanded(child: Text("Does linking my bank account, PAN, and other services with Aadhaar make me vulnerable? No. As your bank information is not shared by the bank with anyone else, no one can have information about your bank account just by knowing your Aadhaar number.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("Is it safe to link PAN card to bank account? Yes, the Income Tax Department of India mandates you to link your PAN card with your bank account. This is necessary for a host of financial transactions, such as availing income tax refunds, depositing cash into your bank account, and dealing in securities, etc.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
