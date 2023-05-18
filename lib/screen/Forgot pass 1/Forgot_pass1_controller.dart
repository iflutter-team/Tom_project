import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Forgot%20pass%202/Forgot_pass2.dart';
import 'package:tom_project/screen/login/Login_screen.dart';

class Forgotpass1controller extends GetxController {
  final TextEditingController Otpcontroller = TextEditingController();

  void navigetToForgotpass1() {
    Get.to(
      () => Forgotpass2(),
    );
  }

  navigetToForgotlogin() {
    Get.to(
      () => Login(),
    );
  }
}
