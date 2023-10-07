import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Deposit2.dart';

class MyDeposit extends StatefulWidget {
  const MyDeposit({super.key});

  @override
  State<MyDeposit> createState() => _MyDepositState();
}

class _MyDepositState extends State<MyDeposit> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    //var size = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Container(
        height: 690.h,
        width: double.infinity,
        color: const Color.fromARGB(255, 1, 18, 32),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white12,
                      child: Image.asset(
                        "assets/images/back-removebg-preview.png",
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 85.w),
                  const Text(
                    "Deposit",
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                          ),
                          child: Text(
                            "Connected payment method",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 235, 237),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Image.asset(
                                        "assets/images/paypal_PNG7.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Paypal",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Expanded(
                                      child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MyDepositSecond(),
                                          ));
                                    },
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 235, 237),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Image.asset(
                                        "assets/images/google-pay-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Google Pay",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const Expanded(
                                      child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 235, 237),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Image.asset(
                                        "assets/images/gopay-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Gopay",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const Expanded(
                                      child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 235, 237),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Image.asset(
                                        "assets/images/Apple_Pay-Logo.wine.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Apple Pay",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const Expanded(
                                      child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Or Use a Bank Account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 235, 237),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Image.asset(
                                        "assets/images/Mandiri-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Bank mandiri",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const Expanded(
                                      child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MyDepositSecond(),
                                          ));
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 231, 235, 237),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Image.asset(
                                          "assets/images/BCA_bank-removebg-preview.png"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Bank BCA",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const Expanded(
                                      child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50.h,
                            width: 320.w,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 235, 237),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Image.asset(
                                        "assets/images/Bni_bank-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Bank BNI",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const Expanded(
                                      child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
