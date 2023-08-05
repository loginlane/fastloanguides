import 'package:fastloanguide/config/appcolor.dart';
import 'package:fastloanguide/view/home_screen.dart';
import 'package:flutter/material.dart';


class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;

  List<AllinOnboardModel> allinonboardlist = [
    AllinOnboardModel(
        "https://img.freepik.com/free-vector/business-ethics-illustration_23-2148840153.jpg?t=st=1691132476~exp=1691133076~hmac=f5d49d40c9ea11045dbc0ae7c66df42c2e5d7587c97750172a875fa96cf2f1c8",
        "tell your lender that the money is for that reason. You should also map out a repayment plan, like paying them back 70 a month for the next 10 months.",
        "What do you say when asking for a loan?"),
    AllinOnboardModel(
        "https://img.freepik.com/free-vector/lightbulb-gold-coins-scale-flat-vector-illustration-tiny-employee-men-women-comparing-creative-ideas-innovation-finance-profit-economy-assessment-comparison-concept_74855-26056.jpg?t=st=1691132553~exp=1691133153~hmac=4a701497a30106f3b4e17f1611ba67a0c4fe46f04f8f757a95df0739a18e83b7",
        "A loan is a sum of money that one or more individuals or companies borrow from banks or other financial institutions so as to financially manage planned or unplanned events. In doing so, the borrower incurs a debt, which he has to pay back with interest and within a given period of time.",
        "What is loan simple words?"),
    AllinOnboardModel(
        "https://img.freepik.com/premium-vector/stock-investment-financial-consultation-advise_157667-368.jpg",
        "The simple loan payment formula includes your loan principal amount, your interest rate and your loan term.",
        "How loans are paid?"),
  ];
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        centerTitle: true,
        title: Text(
          "Easy & Quick Loan Guide",
          style: TextStyle(color: AppColor.whiteColor),
        ),
        backgroundColor: AppColor.orangeColor,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(controller: controller,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: allinonboardlist.length,
              itemBuilder: (context, index) {
                return PageBuilderWidget(
                    title: allinonboardlist[index].titlestr,
                    description: allinonboardlist[index].description,
                    imgurl: allinonboardlist[index].imgStr);
              }),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                allinonboardlist.length,
                    (index) => buildDot(index: index),
              ),
            ),
          ),
          currentIndex < allinonboardlist.length - 1
              ? Positioned(
            bottom: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.previousPage(duration: const Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.orangeColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0))),
                  ),
                  child: Text(
                    "Previous",
                    style: TextStyle(fontSize: 18, color: AppColor.whiteColor),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.nextPage(duration: const Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.orangeColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0))),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 18, color: AppColor.whiteColor),
                  ),
                )
              ],
            ),
          )
              : Positioned(
            bottom: MediaQuery.of(context).size.height * 0.035,
            left: MediaQuery.of(context).size.width * 0.33,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              style: ElevatedButton.styleFrom(
                primary: AppColor.orangeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18, color: AppColor.whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: AppColor.kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? AppColor.orangeColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class PageBuilderWidget extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  PageBuilderWidget(
      {Key? key,
        required this.title,
        required this.description,
        required this.imgurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// banner ad
          Container(
            height: height/8,
            width: width,
            color: Colors.transparent,
          ),
          Container(
            height: height/3,
            child: Image.network(imgurl),
          ),
          const SizedBox(
            height: 20,
          ),
          //Tite Text
          Text(title,textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColor.primarygreen,
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 30,
          ),
          //discription
          Text(description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.primarygreen,
                fontSize: 14,
              ))
        ],
      ),
    );
  }
}

class AllinOnboardModel {
  String imgStr;
  String description;
  String titlestr;
  AllinOnboardModel(this.imgStr, this.description, this.titlestr);
}