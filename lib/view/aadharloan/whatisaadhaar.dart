import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class WhatIsAadhaar extends StatelessWidget {
  const WhatIsAadhaar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("What is Aadhaar?"),
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
                Expanded(child: Text("Aadhaar card is a physical/ original copy of unique identification proof. Whereas, e-Aadhaar card is a duplicate/ printed copy of Aadhaar card which is downloaded from the official website of UIDAI. 2. Aadhaar card is available in hard copy, whereas, e-Aadhaar card is available in digital format.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
