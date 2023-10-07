import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ByStockScreen.dart';

class MyPreviewWithdrawSecond extends StatefulWidget {
  const MyPreviewWithdrawSecond({super.key});

  @override
  State<MyPreviewWithdrawSecond> createState() =>
      _MyPreviewWithdrawSecondState();
}

class _MyPreviewWithdrawSecondState extends State<MyPreviewWithdrawSecond> {
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
              height: 50.h,
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
    //final double width = MediaQuery.of(context).size.width;
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
                height: 40.h,
              ),
              Center(
                child: Container(
                    height: 160.h,
                    width: 230.w,
                    child:
                        Image(image: AssetImage("assets/images/Withdraw.png"))),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: Text(
                "Withdrawals are\nbeing Processed!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              )),
              SizedBox(
                height: 18,
              ),
              Center(
                  child: Text(
                "This withdrawal process will run 3-4\nbussiness days before the funds are\ndeposited into your account",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(5)),
                height: 60.h,
                width: 325.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 231, 235, 237),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Image.asset(
                            "assets/images/BCA_bank-removebg-preview.png"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bank BCA",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Text("Account ending +2278")
                        ],
                      ),
                      SizedBox(
                        width: 80,
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
                        builder: (context) => MyStock(),
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
                        "Ok ",
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
