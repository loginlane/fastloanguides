import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class HomeLoan extends StatelessWidget {
  const HomeLoan({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("Home Loan"),
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
                  Expanded(child: Text("Filling the form. Home Loan Procedure starts with filling out the loan application form",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Documentation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("Processing and Verification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("Sanction Letter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("Secure Payment Fee.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("Legal and Technical Check",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            ),
            SizedBox(height: height/45),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.do_not_disturb_on_total_silence),
                SizedBox(width: width/40),
                Expanded(child: Text("Loan Disbursal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
