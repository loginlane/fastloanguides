import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class PhysicalCopyOfAadhaar extends StatelessWidget {
  const PhysicalCopyOfAadhaar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("is the physical copy of Aadhaar e-Aadhaar equally valid?"),
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
                Expanded(child: Text("Downloaded Aadhaar (e-Aadhaar) is, therefore, as legally valid proof of identity under Section 4(3) of the Aadhaar Act, 2016 read together with Regulation 15 (1) of the Aadhaar (Enrolment and Update) Regulations, 2016, as printed version of Aadhaar Letter. 7.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
