import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Forgot%20pass%201/Forgot_pass1.dart';
import 'package:tom_project/screen/login/Login_screen.dart';

class Forgotcontroller extends GetxController {
  final TextEditingController phonecontroller = TextEditingController();

  void navigetToForgot() {
    Get.off(
      () => Forgotpass1(),
    );
  }

  navigetToForgotlogin() {
    Get.off(
      () => Login(),
    );
  }
}
