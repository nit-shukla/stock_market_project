import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Preview Withdraw2.dart';

class MyPreviewWithdraw extends StatefulWidget {
  const MyPreviewWithdraw({super.key});

  @override
  State<MyPreviewWithdraw> createState() => _MyPreviewWithdrawState();
}

class _MyPreviewWithdrawState extends State<MyPreviewWithdraw> {
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
    //final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    //  var size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: 360.w,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              const Center(
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 210, 206, 206),
                  radius: 45,
                  backgroundImage:
                      AssetImage("assets/images/BCA_bank-removebg-preview.png"),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              const Center(
                  child: Text(
                "Bank Cental Asia",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              const Divider(
                height: 40.0,
                thickness: 0.2,
                color: Colors.grey,
                indent: 1.0,
                endIndent: 1.0,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Withdraw in ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    "Dollars(USD)",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              const Divider(
                height: 40.0,
                thickness: 0.2,
                color: Colors.grey,
                indent: 1.0,
                endIndent: 1.0,
              ),
              SizedBox(
                height: 10.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Account Holder Name",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    "Jack Sparrow",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Account Number",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    "1143672638",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Bank Name",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    "Bank  BCA",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              const Divider(
                height: 40.0,
                thickness: 0.2,
                color: Colors.grey,
                indent: 1.0,
                endIndent: 1.0,
              ),
              SizedBox(
                height: 10.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      " Ammount",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    "Lucknow",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Withdraw Fee",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    "USD",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              const Divider(
                height: 40.0,
                thickness: 0.2,
                color: Colors.grey,
                indent: 1.0,
                endIndent: 1.0,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Total Proceeds",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    "₹20.423 ",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 12.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPreviewWithdrawSecond(),
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
                        "Withdraw Now ",
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
