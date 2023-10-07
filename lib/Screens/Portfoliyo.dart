import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Bargraph/Bargraph1.dart';
import 'Portfolio1.dart';

class MyPortFoliyo extends StatefulWidget {
  const MyPortFoliyo({super.key});

  @override
  State<MyPortFoliyo> createState() => _MyPortFoliyoState();
}

class _MyPortFoliyoState extends State<MyPortFoliyo> {
  String dropdownValue = 'Months';
  List<double> monthlySummary = [
    4.40,
    5.6,
    3.2,
    3.2,
    1.55,
    4.1,
    8.12,
    3.11,
    9,
    8.11,
    99.1,
    5.55
  ];
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
        color: const Color.fromARGB(255, 1, 18, 32),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40.h),
              child: Row(
                children: [
                  const Text(
                    "Portfolio",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: width * 0.35,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Image.asset(
                      "assets/images/search2-removebg-preview.png",
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Image.asset(
                      "assets/images/notess.png",
                      height: 25,
                    ),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Available Balance",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '₹128.250.00',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: width * 0.14,
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,

                            items: <String>[
                              'Months',
                              'January',
                              'February',
                              'March',
                              'April',
                              'May',
                              'June',
                              'Julay',
                              'August',
                              'September',
                              'October',
                              'November',
                              'Dedember'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 12),
                                ),
                              );
                            }).toList(),
                            // Step 5.
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: height * 0.3,
                      child: MyBarGraph(
                        monthlySummary: monthlySummary,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_down_outlined,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Spent",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "₹12.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                VerticalDivider(),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.arrow_circle_down_outlined),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Earned",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "₹4.465",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 230, 215, 201),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    "Top Stock",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: width * 0.5,
                                  ),
                                  const Text(
                                    "View All",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyPortFoliyoSecond(),
                                      ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 0.1),
                                      borderRadius: BorderRadius.circular(5)),
                                  height: height * 0.075,
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
                                            width: width * 0.03,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Nightverse",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text("Night"),
                                            ],
                                          ),
                                          SizedBox(
                                            width: width * 0.04,
                                          ),
                                          Icon(Icons.star_border),
                                          SizedBox(
                                            width: width * 0.2,
                                          ),
                                          const Column(
                                            children: [
                                              Text("₹25.123"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "+19%",
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
                              ),
                            ),
                          ],
                        ),
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
