import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Exchange2.dart';

class MyExchange extends StatefulWidget {
  const MyExchange({super.key});

  @override
  State<MyExchange> createState() => _MyExchangeState();
}

class _MyExchangeState extends State<MyExchange> {
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
              padding: EdgeInsets.only(left: 20, top: 40),
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
                  SizedBox(
                    width: 80.w,
                  ),
                  const Text(
                    "Convert",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 110.h,
                                width: 300.w,
                                decoration: const BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Send"),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("0.4325")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 90.w,
                                      ),
                                      const CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            'assets/images/wind.png'),
                                        backgroundColor: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Bluemove",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(Icons.arrow_downward)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                height: 110.h,
                                width: 300.w,
                                decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Receive"),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("24.593")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 90.w,
                                      ),
                                      const CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                            'assets/images/Staff+Photos.png'),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Nightverse",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(Icons.arrow_downward)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            height: 80,
                            width: 100,
                          ),
                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10))),
                          Image.asset(
                            "assets/images/Group 3.png",
                            height: 35,
                            width: 35,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(5)),
                        height: 60,
                        width: 300.w,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text(
                                "Available balance",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Text("₹156.256.00",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(5)),
                        height: 60,
                        width: 300.w,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text(
                                "Exchange fee",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 130.w,
                              ),
                              Text("₹90",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyExchange2(),
                              ));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 1, 18, 32),
                                borderRadius: BorderRadius.circular(5)),
                            height: 40.h,
                            width: 300.w,
                            child: const Center(
                              child: Text(
                                "Continue ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
