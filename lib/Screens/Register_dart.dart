import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

import 'Login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController agreeController = TextEditingController();
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  void login(
      {required String email,
      required String password,
      required String password_confirmation,
      required String firstname,
      required String mobile}) async {
    try {
      Response response = await post(
          Uri.parse('https://thebullstrender.com/api/register'),
          body: {
            'email': email,
            'password': password,
            'firstname': firstname,
            'mobile': mobile,
            'password_confirmation': password_confirmation,
            'agree': "1",
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data);
      } else {
        print('faild');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign up"),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create account',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 27,
                            fontFamily: 'Montserrat')),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    TextField(
                      controller: firstnameController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffde5753))),
                          prefixIcon:
                              Icon(Icons.person, color: Colors.grey[400]),
                          labelText: 'First Name',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffde5753))),
                          prefixIcon: Icon(Icons.mail, color: Colors.grey[400]),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: mobileController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffde5753))),
                          prefixIcon: Icon(Icons.phone_android,
                              color: Colors.grey[400]),
                          labelText: 'Mobile',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffde5753))),
                          prefixIcon: Icon(Icons.lock, color: Colors.grey[400]),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText1 = !_obscureText1;
                                });
                              },
                              child: Icon(
                                  color: Colors.grey[400],
                                  _obscureText1
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[600])),
                      obscureText: _obscureText1,
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: confirmpasswordController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffde5753))),
                          prefixIcon: Icon(Icons.lock, color: Colors.grey[400]),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText2 = !_obscureText2;
                                });
                              },
                              child: Icon(
                                  color: Colors.grey[400],
                                  _obscureText2
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[600])),
                      obscureText: _obscureText2,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: agreeController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffde5753))),
                          labelText: 'agree',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 328,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffde5753)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)))),
                        onPressed: () {
                          login(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString(),
                              password_confirmation:
                                  passwordController.text.toString(),
                              firstname: firstnameController.text.toString(),
                              mobile: mobileController.text.toString());
                        },
                        child: const Text('Create an account',
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
                padding: EdgeInsets.only(left: 70.w),
                child: Row(
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: Text(" Login",
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
        )));
  }
}
