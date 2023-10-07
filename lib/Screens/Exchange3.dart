import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ByStockScreen.dart';

import 'history_page.dart';

class MyPreViewExchange extends StatefulWidget {
  const MyPreViewExchange({super.key});

  @override
  State<MyPreViewExchange> createState() => _MyPreViewExchangeState();
}

class _MyPreViewExchangeState extends State<MyPreViewExchange> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Container(
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
                    "PreView Withdraw",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
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
    //final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    //  var size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                    height: 160.h,
                    width: 230.w,
                    child:
                        Image(image: AssetImage("assets/images/Withdraw.png"))),
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                  child: Text(
                "Exchange order\n      received!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              )),
              SizedBox(
                height: 18,
              ),
              Center(
                  child: Text(
                "Your order has been receivedand will be\nexcude as soon as the market opens",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              )),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(5)),
                height: 60.h,
                width: 320.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const Stack(alignment: Alignment.bottomRight, children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage("assets/images/wind.png"),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage("assets/images/Staff+Photos.png"),
                        )
                      ]),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nightverse",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Text("Night")
                        ],
                      ),
                      SizedBox(
                        width: 110.w,
                      ),
                      const Expanded(
                          child: Text(
                        "₹20.423",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHistory(),
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
                        "View my Portfoloi",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyStock(),
                      ));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.circular(5)),
                    height: 45.h,
                    width: 350.w,
                    child: const Center(
                      child: Text(
                        "Back to Starbucks stack ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
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
