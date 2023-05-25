//controller
import 'package:flutter/material.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/screen/Forgot%20pass/Forgot_pass.dart';
import 'package:tom_project/screen/Register/Register_screen.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  void navigetToLoginscreen() {
    Get.to(
      () => Bottomhello(),
    );
  }

  navigetToRegister() {
    Get.to(
      () => Registerscreen(),
    );
  }

  void navigetToForgot() {
    Get.to(
      () => Forgot(),
    );
  }

  bool Hello = false;
  void change(bool val) {
    Hello = val;
    update(["change"]);
  }
}
