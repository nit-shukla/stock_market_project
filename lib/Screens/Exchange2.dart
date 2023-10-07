import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Exchange3.dart';

class MyExchange2 extends StatefulWidget {
  const MyExchange2({super.key});

  @override
  State<MyExchange2> createState() => _MyExchange2State();
}

class _MyExchange2State extends State<MyExchange2> {
  @override
  Widget build(BuildContext context) {
    //  final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
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
              padding: EdgeInsets.only(left: 20, top: 50),
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
                    width: 50.w,
                  ),
                  const Text(
                    "Preview Exchange",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ContainerItems()
          ],
        ),
      ),
    ));
  }
}

class ContainerItems extends StatefulWidget {
  @override
  State<ContainerItems> createState() => _ContainerItemsState();
}

class _ContainerItemsState extends State<ContainerItems> {
  @override
  Widget build(BuildContext context) {
    //   final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    //  var size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 45,
                        backgroundImage: AssetImage("assets/images/wind.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Bluemove",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Blue",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(children: [
                    SizedBox(
                      height: 65,
                    ),
                    Icon(Icons.arrow_forward)
                  ]),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 45,
                        backgroundImage:
                            AssetImage("assets/images/Staff+Photos.png"),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Text(
                        "Nightverse",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                        "Night",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                height: 50.0,
                thickness: 1.0,
                color: Colors.grey,
                indent: 1.0,
                endIndent: 1.0,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Market price SPOT",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "₹25.38",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Market price SBUX",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "₹42.123",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Market price Shares",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "0.01782037",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(
                height: 50.0,
                thickness: 1.0,
                color: Colors.grey,
                indent: 1.0,
                endIndent: 1.0,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Account",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "₹30.000.21",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Exchange  Fee",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "₹24.00 ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(
                height: 50.0,
                thickness: 1.0,
                color: Colors.grey,
                indent: 1.0,
                endIndent: 1.0,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total Proceeds",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "₹16.005.00 ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPreViewExchange(),
                      ));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 18, 32),
                        borderRadius: BorderRadius.circular(5)),
                    height: 45.h,
                    width: 350.w,
                    child: const Center(
                      child: Text(
                        "Exchange Now ",
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
    );
  }
}
