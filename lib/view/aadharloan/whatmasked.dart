import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class WhatMasked extends StatelessWidget {
  const WhatMasked({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("What is a masked base?"),
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
                  Expanded(child: Text("Masked Aadhaar cards are the same as regular Aadhaar cards. The only difference is that the first 8 digits of your Aadhaar number are hidden and only the last 4 are visible. Masked Aadhaar is useful when you do not want to reveal your Aadhaar number to protect your data privacy.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Though Aadhaar number was introduced as a unique identification for every Indian, miscreants have found novel ways to commit cyber fraud and other financial crimes using Aadhaar data. Though the government is aware of the problem and is working on a solution, crooks are finding new ways to misuse the system and loot the common man.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Aadhaar based loans have increased manifold in recent years. With the Corona pandemic boosting the digital ecosystem, the common man was very happy with e-KYC, or Aadhaar based KYC, to get instant loans, without having to visit the bank. But criminals found a way to misuse this system too. A large number of loans were taken on the basis of Aadhaar, without the knowledge of the Aadhaar card holder. That is when the government stepped in to protect the common man, by introducing Masked Aadhaar.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("To make Aadhaar numbers more secure, the UIDAI offers the option of a 'Masked Aadhaar ID'. A masked Aadhaar allows you to conceal the first eight digits of your Aadhaar number while revealing only the last four. It can be shared without revealing sensitive or personal information about the user, including the 12-digit number.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("When you download a masked Aadhaar card version of your Aadhaar ID, your photo, unique QR code, demographic information, and other details will remain. You don't have to worry about this card's acceptance or legality because UIDAI will sign it.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
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
