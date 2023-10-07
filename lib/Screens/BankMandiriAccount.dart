import 'package:flutter/material.dart';



import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Confirm_bankdetail.dart';

class MyMandiriAccount extends StatefulWidget {
  const MyMandiriAccount({super.key});

  @override
  State<MyMandiriAccount> createState() => _MyMandiriAccountState();
}

class _MyMandiriAccountState extends State<MyMandiriAccount> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
   //final double width = MediaQuery.of(context).size.width;
   // var size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 1, 18, 32),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
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
                                horizontal: 20.h,),
                            child: const Text(
                              "Enter your Bank \nMandiri account!",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: const Text(
                            "Enter Account Number",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: SizedBox(
                            height: 50.h,
                            width: 350.w,
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: "78371277736",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: const Text(
                            "Bank Account Name",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: SizedBox(
                            height: 50.h,
                            width: 350.w,
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: "User",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: const Text(
                            "City",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: SizedBox(
                            height: 50.h,
                            width: 350.w,
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: "Lucknow",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: const Text(
                            "City",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: SizedBox(
                            height: 50.h,
                            width: 350.w,
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: "Varanasi",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 55.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 5.w),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ConfirmBankDetails(),
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
                                    "Continue",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
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
