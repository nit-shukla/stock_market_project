import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Login_page.dart';
import 'Navigation.dart';
import 'Register_dart.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    whereToGo();
    super.initState();
  }

  List OnboardingData = [
    {
      "image": 'assets/images/screenshot1.png',
      "title": "Welcome to Invest",
      "description":
          "Lorem ipsum is simply dummy text of the printing and the type scripting industry"
    },
    {
      "image": 'assets/images/screenshot2.png',
      "title": "Get Better Returns",
      "description":
          "Invest is the world's top landing brands & unlock the amazing returns of investment"
    },
    {
      "image": 'assets/images/screenshot3.png',
      "title": "Your Safty id first",
      "description":
          "Your brokerage account is maintained by the Kiash Infotech"
    },
  ];
  Color whiteColor = Colors.white;
  Color otherColor = Colors.black;
  PageController pageController = PageController();
  int currentPage = 0;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  //static const String KEYLOGIN = 'login';

  var checkid = false;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // var size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.66,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: OnboardingData.length,
                onPageChanged: onChanged,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: height * 0.125,
                      ),
                      SizedBox(
                        width: width / 1.5,
                        height: height / 3,
                        child: Image.asset(OnboardingData[index]['image']),
                      ),
                      SizedBox(
                        height: height / 25,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(width / 15, 10, width / 15, 0),
                        child: Text(
                          OnboardingData[index]['title'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25, color: otherColor),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Center(
                        child: Text(
                          OnboardingData[index]['description'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: otherColor),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 40),
                alignment: Alignment.bottomCenter,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const SlideEffect(
                    activeDotColor: Colors.black,
                    dotWidth: 20,
                    dotHeight: 10,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: height * 0.05,
                  width: width * 0.40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                      setState(() {
                        checkid = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: checkid ? Colors.white : Colors.black,
                    ),
                    child: Text(checkid ? 'Login' : 'Login',
                        style: TextStyle(
                            color: checkid ? Colors.grey : Colors.white)),
                  ),
                ),
                // SizedBox(
                //   width: width * 0.04,
                // ),
                SizedBox(
                  height: height * 0.05,
                  width: width * 0.40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ));
                      setState(() {
                        checkid = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: checkid ? Colors.black : Colors.white,
                      side: const BorderSide(width: 1, color: Colors.grey),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: checkid ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(5)),
              height: height * 0.05,
              width: width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/google image.png",
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarExample()),
                      );
                    },
                    child: const Text(
                      "Sign in with Google",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void whereToGo() async {
    var sharePref = await SharedPreferences.getInstance();
    var isLoggedIn = sharePref.getString('KEYLOGIN');
    if (isLoggedIn != null) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavigationBarExample(),
          ));
    }
  }
}
