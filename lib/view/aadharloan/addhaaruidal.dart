import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class AadhaarUIDL extends StatelessWidget {
  const AadhaarUIDL({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("What is e-Aadhaar about UIDAL?"),
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
                Expanded(child: Text("e-Aadhaar is a password protected electronic copy of Aadhaar, which is digitally signed by the competent Authority of UIDAI and can be downloaded from the official website or mobile Application (mAadhaar available on Google Play and Apple store for Smartphones) of the UIDAI.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
