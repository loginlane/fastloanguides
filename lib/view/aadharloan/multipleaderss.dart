import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class MultipleAddress extends StatelessWidget {
  const MultipleAddress({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("Where multiple address proofs are available to a resident (eg current andoriginal), what proof will UIDAL accept, and whare will that Aadhaar letter be send?"),
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
                  Expanded(child: Text("This ensures that one Aadhaar is issued only to one Resident and one Resident gets only one Aadhaar for the lifetime. This uniqueness property of Aadhaar allows it to act as a robust ID, hence, Aadhaar is accepted as Proof of Identity and Proof of Address for an Aadhaar Holder.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Download. Aadhaar is a 12 digit individual identification number issued by the Unique Identification Authority of India on behalf of the Government of India. The number serves as a proof of identity and address, anywhere in India.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("There are two types of data gets captured for Aadhaar enrolment i.e. Demographic (Name, Gender, DoB, Address, Mobile number and email id) & Bioemtric (10 Finger Prints, Both Iris and photograph). Mobile number and email id are optional. Yes, you can enrol for Aadhaar even if any or all fingers / Iris are missing.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
