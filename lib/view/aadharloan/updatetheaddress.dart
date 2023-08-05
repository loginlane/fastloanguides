import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';

class UpdateTheAddress extends StatelessWidget {
  const UpdateTheAddress({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.orangeColor,
        elevation: 0,
        title: const Text("update the address in your 'Aadhaar"),
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
                  Expanded(child: Text("Passport (of self/spouse/parents in case of a minor)",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Bank statement (Passbook, Post Office Account Statement)",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Ration card",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Voter ID",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Driving License",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Pensioner Card",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Disability Card",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("CGHS/ECHS/ESIC/Medi-Claim Card with Photo issued by State/Central Govt/PSUs",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Electricity Bills (not older than three months), including prepaid receipts",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Water Bill (not older than three months)",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Telephone Landline Bill/ Phone (Postpaid Mobile) Bill/ Broadband Bill (not older than three months)",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Insurance Policy (Life & Medical only)",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
              SizedBox(height: height/45),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.do_not_disturb_on_total_silence),
                  SizedBox(width: width/40),
                  Expanded(child: Text("Property Tax Receipt (not older than one year)",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
