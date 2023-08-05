import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class UpdateYourAadhaar extends StatelessWidget {
  const UpdateYourAadhaar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("Update your Aadhaar details"),
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
                Expanded(child: Text("You can update your Address online in Self Service Update Portal (SSUP). For other details updates such as Demographic details (Name, Address, DoB, Gender, Mobile Number, Email) as well as Biometrics (Finger Prints, Iris & Photograph) in Aadhaar you will have to visit Permanent Enrolment Center.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("No document is required for updating the biometrics, mobile number and email ID. To update Aadhaar Card offline, you can either walk-in directly to the nearest Aadhaar Seva Kendra or book an appointment online to have a more hassle-free experience.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
