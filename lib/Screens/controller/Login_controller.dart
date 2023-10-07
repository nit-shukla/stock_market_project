import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled2/Screens/Models/Login_model.dart';
import 'package:untitled2/Screens/Navigation.dart';

class loginController extends GetxController {
  final passwordController = TextEditingController().obs;
  final usernameController = TextEditingController().obs;
  RxBool loading = false.obs;
  Rx<LoginModel> user = LoginModel().obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response =
          await post(Uri.parse('https://swipearn.com/api/login'), body: {
        'username': usernameController.value.text,
        'password': passwordController.value.text,
      });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        loading.value = false;

        if (data["status"] == "success") {
          user.value = LoginModel.fromJson(data);
          var sharePref = await SharedPreferences.getInstance();
          sharePref.setString('KEYLOGIN', user.value.data!.accessToken);

          print(data["status"]);
          Get.snackbar('Login Successful', 'Congurations');

          Get.offAll(() => BottomNavigationBarExample());
        }
      } else {
        loading.value = false;
        Get.snackbar('Login failed', data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('exception', e.toString());
    }
  }
}
