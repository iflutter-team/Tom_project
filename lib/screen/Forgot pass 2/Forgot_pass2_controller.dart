import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/login/Login_screen.dart';

class Forgotpass2controller extends GetxController {
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confrimcontroller = TextEditingController();

  void navigetToForgotLogin() {
    Get.to(
      () => const Login(),
    );
  }
}
