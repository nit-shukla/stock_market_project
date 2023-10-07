import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'BankMandiriAccount.dart';
import 'Deposit2.dart';
import 'Searchpage.dart';

class MySelectbank extends StatefulWidget {
  const MySelectbank({super.key});

  @override
  State<MySelectbank> createState() => _MySelectbankState();
}

class _MySelectbankState extends State<MySelectbank> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 1, 18, 32),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white12,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/images/back-removebg-preview.png",
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  const Text(
                    "Select Bank",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 21),
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 10.w),
                          child: Container(
                            height: 40.h,
                            width: 350.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                    icon: Icon(Icons.search),
                                    onPressed: () => MySearch(),
                                  ),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                                      "Bank Mandiri",
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
                                                MyMandiriAccount(),
                                          ));
                                    },
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                                        "assets/images/Bank_jago-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "bank Jago",
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                                        "assets/images/Bank_Danamon-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Bank Danamon",
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                                        "assets/images/mayBank-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "bank MayBank",
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                                        "assets/images/bank_Permata-removebg-preview.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Bank Permata",
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                                        "assets/images/BCA_bank-removebg-preview.png"),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: height * 0.075,
                            width: width * 0.9,
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
