import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Registration%20page%202/Registration_screen.dart';
import 'package:tom_project/screen/home/Home_screen.dart';
import 'package:tom_project/screen/login/Login_screen.dart';

class RegisterController extends GetxController {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  final TextEditingController confirmpasscontroller = TextEditingController();
  final TextEditingController Idcontroller = TextEditingController();

  void navigetToRegister() {
    Get.to(
      () => Registration(),
    );
  }

  void navigetToRegistrationLogin() {
    Get.to(
      () => Login(),
    );
  }

  bool right = false;
  void change(bool val) {
    right = val;
    update(["right"]);
  }
}
