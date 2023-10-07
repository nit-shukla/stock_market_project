import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Buy2Page.dart';

class MyStock extends StatefulWidget {
  const MyStock({super.key});

  @override
  State<MyStock> createState() => _MyStockState();
}

class _MyStockState extends State<MyStock> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    //var size = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Container(
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
                    width: 100.w,
                  ),
                  const Text(
                    "Buy",
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(5)),
                        height: 60.h,
                        width: 320.w,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 22,
                                  backgroundImage: AssetImage(
                                      'assets/images/Staff+Photos.png'),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nightverse",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("Night"),
                                  ],
                                ),
                                SizedBox(width: 7.w),
                                Container(
                                  height: 40,
                                  width: 60,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/Graph_icon.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 45.w,
                                ),
                                const Column(
                                  children: [
                                    Text("₹356.00"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "+13%",
                                      style: TextStyle(color: Colors.green),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      const Center(
                        child: Text(
                          "₹56.256",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  "Buy in Dollers",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text("(₹)"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Number('1'),
                          Number("2"),
                          Number("3"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Number('4'),
                          Number("5"),
                          Number("6"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Number('7'),
                          Number("8"),
                          Number("9"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Number('.'),
                          Number("0"),
                          Number("0"),
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
                                builder: (context) => MyStockSecond(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 1, 18, 32),
                              border: Border.all(width: 0.1),
                              borderRadius: BorderRadius.circular(5)),
                          height: 50.h,
                          width: width * 0.9,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 30.h,
                                ),
                                const Expanded(
                                  flex: 2,
                                  child: Text(
                                    "Swipe to make a deposit",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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

  CircleAvatar Number(String numbertext) {
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
}
