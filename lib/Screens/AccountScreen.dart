import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
=======
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
>>>>>>> f4d6e5be3f5b3532dd6d10dfa7ed9f24d52ec2a2
import 'package:shared_preferences/shared_preferences.dart';

import 'Login_page.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final List<String> items = List<String>.generate(10000, (i) => '$i');
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
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
              padding: EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  const Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                  SizedBox(
                    width: 185.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                        backgroundColor: Colors.white12,
                        child: Icon(
                          Icons.edit_note,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
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
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          const Center(
                              child: Text(
                            "lorem",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "jack_sparrow14@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
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
                            child: ListView(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
<<<<<<< HEAD
                                    Text(
=======
                                    const Text(
>>>>>>> f4d6e5be3f5b3532dd6d10dfa7ed9f24d52ec2a2
                                      "Account",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 55.h,
                                      width: 320.w,
                                      child: const ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.amber,
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: Text(
                                          "Persional info",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 55.h,
                                      width: 320.w,
                                      child: const ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.red,
                                          child: Icon(
                                            Icons.notifications_none,
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: Text(
                                          "Notification",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 55.h,
                                      width: 320.w,
                                      child: const ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.blue,
                                          child: Icon(
                                            Icons.security,
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: Text(
                                          "Security",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 55.h,
                                      width: 320.w,
                                      child: const ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.indigo,
                                          child: Icon(
                                            Icons.language,
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: Text(
                                          "Language",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    const Text(
                                      "Setting",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 55.h,
                                      width: 320.w,
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.grey[700],
                                          child: const Icon(
                                            Icons.dark_mode_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: const Text(
                                          "Dark Mode",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 55.h,
                                      width: 320.w,
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.green[400],
                                          child: const Icon(
                                            Icons.help_center,
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: const Text(
                                          "Help Center",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 55.h,
                                      width: 320.w,
                                      child: const ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.device_hub,
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: Text(
                                          "About Device",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text(
                                                'Logout?',
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                  child: const Text(
                                                    "Cancel",
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () async {
                                                    final SharedPreferences
                                                        sharedPreferences =
                                                        await SharedPreferences
                                                            .getInstance();
                                                    sharedPreferences
                                                        .remove("KEYLOGIN");
                                                    Get.offAll(() =>
                                                        const LoginPage());
                                                  },
                                                  child: const Text(
                                                    "Logout",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 0.1),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        height: 55.h,
                                        width: 320.w,
                                        child: const ListTile(
                                          leading: CircleAvatar(
                                            backgroundColor: Colors.red,
                                            child: Icon(
                                              Icons.logout,
                                              color: Colors.white,
                                            ),
                                          ),
                                          title: Text(
                                            "Logout",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          trailing: Icon(
                                              Icons.arrow_forward_ios_outlined),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
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
