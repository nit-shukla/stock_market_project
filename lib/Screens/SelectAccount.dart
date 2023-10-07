import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Searchpage.dart';
import 'SelectBankPage.dart';

class MySelectAccount extends StatefulWidget {
  const MySelectAccount({super.key});

  @override
  State<MySelectAccount> createState() => _MySelectAccountState();
}

class _MySelectAccountState extends State<MySelectAccount> {
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
                      child: Image.asset(
                        "assets/images/back-removebg-preview.png",
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MySelectbank(),
                          ));
                    },
                    child: const Text(
                      "Select Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 21),
                    ),
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
                              horizontal: 20.h, vertical: 25.w),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: Container(
                            height: 50.h,
                            width: 350.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "7837*******",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: Container(
                            height: 50.h,
                            width: 350.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "8963*******",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: Container(
                            height: 50.h,
                            width: 350.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "3458*******",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: Container(
                            height: 50.h,
                            width: 350.w,
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: "9874*******",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 285.w),
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MySelectbank(),
                                  ));
                            },
                            backgroundColor: Colors.black54,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        )
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
