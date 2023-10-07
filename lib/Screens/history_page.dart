import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/rounded container.dart';

class MyHistory extends StatefulWidget {
  const MyHistory({super.key});

  @override
  State<MyHistory> createState() => _MyHistoryState();
}

class _MyHistoryState extends State<MyHistory> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Column(
        children: [
          Container(
            height: 100.h,
            width: double.infinity,
            color: const Color.fromARGB(255, 1, 18, 32),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "History",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white12,
                        child: Image.asset(
                          "assets/images/search2-removebg-preview.png",
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ContainerRounded(
                            Text1: "Total work",
                            Text2: "0.12587",
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ContainerRounded(
                            Text1: "Total WishList",
                            Text2: "0.15874",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          ContainerRounded(
                            Text1: "No Data In ",
                            Text2: "0.303085",
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ContainerRounded(
                            Text1: "All",
                            Text2: "0.52147",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ListView(
                    children: [
                      Text(
                        "January 02,2023",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          RoundedContainer2(),
                          SizedBox(height: 10),
                          RoundedContainer3(),
                          SizedBox(height: 10),
                          RoundedContainer4(),
                          SizedBox(
                            height: 50,
                          ),
                          RoundedContainer4(),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}

Widget ContainerRounded({
  required Text1,
  required Text2,
}) {
  return Container(
    height: 90.h,
    width: 150.w,
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Text1),
          Text(
            Text2,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
