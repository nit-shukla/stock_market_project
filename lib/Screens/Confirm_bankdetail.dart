import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'SendPage.dart';

class ConfirmBankDetails extends StatefulWidget {
  const ConfirmBankDetails({super.key});

  @override
  State<ConfirmBankDetails> createState() => _ConfirmBankDetailsState();
}

class _ConfirmBankDetailsState extends State<ConfirmBankDetails> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
        body: MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: SingleChildScrollView(
        child: Container(
          height: 690.h,
          width: double.infinity,
          color: const Color.fromARGB(255, 1, 18, 32),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Row(
                  children: [
                    SizedBox(width: 30.w),
                    const Text(
                      "Confirm your bank details",
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
    // final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    //  var size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 210, 206, 206),
                      radius: 45,
                      backgroundImage: AssetImage(
                          "assets/images/BCA_bank-removebg-preview.png"),
                    ),
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
                        "11469264215",
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
                          "BankName",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Text(
                        "Bank  BCA",
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
                          "City",
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
                          "Currency",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Text(
                        "USO",
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
                          "Account type",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Text(
                        "Savings",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  const Divider(
                    height: 50.0,
                    thickness: 0.2,
                    color: Colors.grey,
                    indent: 1.0,
                    endIndent: 1.0,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 225, 183, 121),
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(5)),
                        height: 100.h,
                        width: 300.w,
                        child: const Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "Make  sure Your destination bank account\n information is correct and there are no errors",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ))),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MySendpage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 1, 18, 32),
                              borderRadius: BorderRadius.circular(5)),
                          height: 45.h,
                          width: 350.w,
                          child: const Center(
                            child: Text(
                              "Add Account",
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
            ),
          ],
        ),
      ),
    );
  }
}
