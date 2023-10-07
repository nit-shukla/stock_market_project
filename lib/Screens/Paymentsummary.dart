import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPaymentSummary extends StatefulWidget {
  const MyPaymentSummary({super.key});

  @override
  State<MyPaymentSummary> createState() => _MyPaymentSummaryState();
}

class _MyPaymentSummaryState extends State<MyPaymentSummary> {
  int Containerbutton = 0;
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 1, 18, 32),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "Payment Summary",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 225, 183, 121),
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Complete payment before 30 December 2022",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Center(
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 210, 206, 206),
                              radius: 45,
                              backgroundImage: AssetImage(
                                  "assets/images/BCA_bank-removebg-preview.png"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                              child: Text(
                            "Bank Central Asia",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )),
                          const SizedBox(
                            height: 15,
                          ),
                          const Center(
                              child: Text(
                                  "We have created a virtual account for you.\n Log into your online banking account\n and make the transfer ")),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Account",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 50.h,
                            width: 320.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '₹20.423',
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.copy))),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Virtual Account N0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 50.h,
                            width: 320.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '788837649982721',
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.copy))),
                            ),
                          ),
                          SizedBox(height: 35.h),
                          InkWell(
                            onTap: () {
                              if (Containerbutton != 0) {
                                setState(() {
                                  Containerbutton = 0;
                                });
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Containerbutton == 0
                                      ? Colors.black
                                      : Colors.white,
                                  border: Border.all(width: 0.1),
                                  borderRadius: BorderRadius.circular(5)),
                              height: 40.h,
                              width: 320.w,
                              child: Center(
                                child: Text(
                                  "I've made the payment",
                                  style: TextStyle(
                                      color: Containerbutton == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.w,
                          ),
                          InkWell(
                            onTap: () {
                              if (Containerbutton != 1) {
                                setState(() {
                                  Containerbutton = 1;
                                });
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Containerbutton == 1
                                      ? Colors.black
                                      : Colors.white,
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              height: 40.h,
                              width: 320.w,
                              child: Center(
                                child: Text(
                                  "Make payment Later",
                                  style: TextStyle(
                                      color: Containerbutton == 1
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
/* CircleAvatar Number(String numbertext) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 31,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30,
        child: Text(numbertext),
      ),
    );
  }
}*/
