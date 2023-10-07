import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortFoliofour extends StatefulWidget {
  const PortFoliofour({super.key});

  @override
  State<PortFoliofour> createState() => _PortFoliofourState();
}

class _PortFoliofourState extends State<PortFoliofour> {
  final List<String> items = List<String>.generate(10000, (i) => '$i');

  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 1, 18, 32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
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
                    width: 185.w,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Icon(
                      Icons.upload_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Expanded(
                      child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                          "assets/images/kit png.png"),
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "IOS Kit for Figma",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Figma.com",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 30.0,
                                  thickness: 0.2,
                                  color: Colors.grey,
                                  indent: 1.0,
                                  endIndent: 1.0,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 105.h,
                                  color: Colors.white,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      const Column(
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CircleAvatar(
                                                radius: 35,
                                                backgroundColor: Colors.white,
                                                backgroundImage: AssetImage(
                                                    "assets/images/imgbin-mac-mini-removebg-preview.png"),
                                              ),
                                              CircleAvatar(
                                                radius: 12,
                                                backgroundImage: AssetImage(
                                                    "assets/images/Airdrop_Apple-removebg-preview.png"),
                                              )
                                            ],
                                          ),
                                          Text(
                                            "Apple Mac\n    mini",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      const Column(
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CircleAvatar(
                                                radius: 35,
                                                backgroundColor: Colors.grey,
                                                backgroundImage: AssetImage(
                                                    "assets/images/6-man Png.png"),
                                              ),
                                              CircleAvatar(
                                                radius: 12,
                                                backgroundImage: AssetImage(
                                                    "assets/images/message image.png"),
                                              )
                                            ],
                                          ),
                                          Text("Fruit List",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400))
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Column(
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 35,
                                                child: Container(
                                                    height: 60,
                                                    child: Image.asset(
                                                        "assets/images/Snapchat_Image-removebg-preview.png")),
                                              ),
                                              const Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 25,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    backgroundImage: AssetImage(
                                                        "assets/images/6-man Png.png"),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    backgroundImage: AssetImage(
                                                        "assets/images/message image.png"),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Text("Group name"),
                                          Text("2 People")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      const Column(
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CircleAvatar(
                                                radius: 35,
                                                backgroundColor: Colors.grey,
                                                backgroundImage: AssetImage(
                                                    "assets/images/6-man Png.png"),
                                              ),
                                              CircleAvatar(
                                                radius: 12,
                                                backgroundImage: AssetImage(
                                                    "assets/images/message image.png"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      const Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 35,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  height: 20.0,
                                  thickness: 0.2,
                                  color: Colors.grey,
                                  indent: 1.0,
                                  endIndent: 1.0,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 105.h,
                                  color: Colors.white,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                              color: Colors.white,
                                              height: 70,
                                              width: 55.w,
                                              child: const Image(
                                                  image: AssetImage(
                                                      "assets/images/Airdrop_Apple-removebg-preview.png"))),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Airdrops",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 25.w,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              color: Colors.white,
                                              height: 70,
                                              width: 70.w,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/message image.png"))),
                                          Text("Message")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 25.w,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              color: Colors.white,
                                              height: 70,
                                              width: 70.w,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/open-book.png"))),
                                          Text("Books"),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 25.w,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              color: Colors.white,
                                              height: 70,
                                              width: 70.w,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/open-book.png"))),
                                          Text("Books"),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 25.w,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              color: Colors.white,
                                              height: 70,
                                              width: 70.w,
                                              child: Image(
                                                  image: AssetImage(
                                                      "assets/images/open-book.png"))),
                                          Text("Books"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 0.1),
                                        borderRadius: BorderRadius.circular(5)),
                                    height: 45.h,
                                    width: 350.w,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Text(
                                        "Add to Reading List ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 0.1),
                                        borderRadius: BorderRadius.circular(5)),
                                    height: 45.h,
                                    width: 350.w,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Text(
                                        "Add BookMark ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 0.1),
                                        borderRadius: BorderRadius.circular(5)),
                                    height: 45.h,
                                    width: 350.w,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Text(
                                        "Add to favorite",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 0.1),
                                        borderRadius: BorderRadius.circular(5)),
                                    height: 45.h,
                                    width: 350.w,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Text(
                                        "Find on Page",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
