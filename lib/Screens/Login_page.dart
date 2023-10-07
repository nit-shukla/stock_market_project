import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Register_dart.dart';
import 'controller/Login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  loginController controller = Get.put(loginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => controller.loading == true
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 78.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 27,
                                    fontFamily: 'Montserrat')),
                            Text('Please sign in to continue',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Montserrat',
                                    fontSize: 17))
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            TextField(
                              controller: controller.usernameController.value,
                              decoration: InputDecoration(
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xffde5753))),
                                  prefixIcon: Icon(Icons.phone_android,
                                      color: Colors.grey[400]),
                                  labelText: 'username',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(height: 15),
                            TextField(
                              controller: controller.passwordController.value,
                              decoration: InputDecoration(
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xffde5753))),
                                  prefixIcon:
                                      Icon(Icons.lock, color: Colors.grey[400]),
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: Icon(
                                          color: Colors.grey[400],
                                          _obscureText
                                              ? Icons.visibility_off
                                              : Icons.visibility)),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey[600])),
                              obscureText: _obscureText,
                            ),
                            const SizedBox(height: 6),
                            const Align(
                              alignment: Alignment.topRight,
                              child: Text('Forgot?',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                      color: Color(0xffde5753))),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              width: 328,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xffde5753)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7)))),
                                onPressed: () {
                                  controller.loginApi();
                                },
                                child: const Text('Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70),
                        child: Row(
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(SignupPage());
                              },
                              child: const Text(" Register",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      decoration: TextDecoration.underline,
                                      color: Color(0xffde5753))),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
