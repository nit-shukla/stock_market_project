import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Deposit2.dart';
import 'Exchange.dart';

import 'PreviewStock.dart';

class MyStockSecond extends StatefulWidget {
  const MyStockSecond({super.key});

  @override
  State<MyStockSecond> createState() => _MyStockSecondState();
}

class _MyStockSecondState extends State<MyStockSecond> {
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
                      const SizedBox(
                        width:100 ,
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
                          SizedBox(height: 20,),
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
                                padding:
                                EdgeInsets.only(left: 5, top: 5),
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
                                        width: 7.w
                                    ),
                                    const SizedBox(
                                      height: 40,
                                      width: 60,
                                      child: Image(image: AssetImage('assets/images/Graph_icon.png'),
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
                          SizedBox(height: 15,),
                          Text("Market Orders",style: TextStyle(fontSize: 18),),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container (
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 70.h,
                            width: 320.w,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius:16 ,
                                    backgroundColor: Colors.grey,

                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                          'assets/images/piggy-bank-svgrepo-com.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Buy in Dollars ",
                                        style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Buy Stock for a doller value at a\nminimum of 1"),
                                    ],
                                  ),

                                     SizedBox(width: 1.w,),
                                  IconButton(
                                    icon:  const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MyDepositSecond(),
                                          ));
                                    },
                                  ),


                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container (
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 70.h,
                            width: 320.w,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius:16 ,
                                    backgroundColor: Colors.grey,

                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                          'assets/images/piggy-bank-svgrepo-com.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Buy in Dollars ",
                                        style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Buy Stock at a minimum\n0.000001111"),
                                    ],
                                  ),
                                  SizedBox(width: 45.w,),

                                  IconButton(
                                    icon:  const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                StockPreview(),
                                          ));
                                    },
                                  ),


                                ],
                              ),
                            ),
                          ),
                          SizedBox( height:20.h,),
                          Text("Market Orders",style: TextStyle(fontSize: 20),),
                          SizedBox( height:20.h,),
                          Container (
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 70.h,
                            width: 320.w,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                const CircleAvatar(
                                radius:16 ,
                                backgroundColor: Colors.grey,

                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                      'assets/images/piggy-bank-svgrepo-com.png'),
                                ),
                              ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Buy in Dollars ",
                                        style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Buy Stock at a minimum\n0.000001111"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  IconButton(
                                    icon:  const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MyDepositSecond(),
                                          ));
                                    },
                                  ),


                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container (
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 70.h,
                            width: 320.w,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                const CircleAvatar(
                                radius:16 ,
                                backgroundColor: Colors.grey,

                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                      'assets/images/piggy-bank-svgrepo-com.png'),
                                ),
                              ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stop Order ",
                                        style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Buy Stock at a minimum\n0.000001111"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  IconButton(
                                    icon:  const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const MyExchange(),
                                          ));
                                    },
                                  ),


                                ],
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


}

