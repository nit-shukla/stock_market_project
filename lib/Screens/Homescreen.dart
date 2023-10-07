import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Deposit.dart';
import 'SelectAccount.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int paymenttype = 0;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Container(
          height: 690.h,
          width: double.infinity,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 40.h, left: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/profile22.jpg"),
                    radius: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello, Good Morning"),
                      Text(
                        "Leslle Alexander",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.25,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyHomeScreen()));
                        },
                        icon: const Icon(Icons.notifications_none)),
                  )
                ],
              ),
            ),
            const Center(
                child: Text(
              "Available Balance",
              style: TextStyle(fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              height: 5,
            ),
            const Center(
                child: Text(
              "₹128.250.00",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            )),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                    text: '₹140.25.00',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                    children: <TextSpan>[
                      TextSpan(
                          text: '  +14%',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 13))
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    if (paymenttype != 0) {
                      setState(() {
                        paymenttype = 0;
                      });
                    }
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MySelectAccount(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: paymenttype == 0 ? Colors.black : Colors.white,
                          border: Border.all(width: 0.8),
                          borderRadius: BorderRadius.circular(5)),
                      height: 45,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_circle_down,
                            color:
                                paymenttype == 0 ? Colors.white : Colors.black,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Withdraw",
                            style: TextStyle(
                                color: paymenttype == 0
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyDeposit(),
                        ));
                    if (paymenttype != 1) {
                      setState(() {
                        paymenttype = 1;
                      });
                    }
                  },
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                        color: paymenttype == 1 ? Colors.black : Colors.white,
                        border: Border.all(width: 0.8),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_circle_down,
                          color: paymenttype == 1 ? Colors.white : Colors.black,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Deposit",
                          style: TextStyle(
                              color: paymenttype == 1
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                height: height * 0.50,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 70, 73, 75),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 142,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/Staff+Photos.png'),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Nightverse",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text("Night"),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "₹95.35",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_up_rounded,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "1.70",
                                        style: TextStyle(),
                                      ),
                                      Text("(+1.36%)")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 142,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 128, 128, 128),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/wind.png'),
                                        backgroundColor: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bluemove",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Blue",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "₹111,05",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Row(children: [
                                    Icon(
                                      Icons.arrow_circle_up_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "-2.25",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "(+0.39%)",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 20, left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "My Watchlist",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 160,
                                    ),
                                    Text(
                                      "View All",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 0.1),
                                    borderRadius: BorderRadius.circular(5)),
                                height: height * 0.090,
                                width: width * 0.9,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                        const SizedBox(
                                          height: 30,
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/Graph_icon.png'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35.w,
                                        ),
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("₹356.00"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "+13%",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ])),
    ));
  }
}
