import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/home/Home_screen.dart';
import 'package:tom_project/screen/login/Login_screen.dart';

class RegistrationController extends GetxController {
  final TextEditingController GSTcontroller = TextEditingController();
  final TextEditingController Comapanynamecontroller = TextEditingController();
  final TextEditingController Addresscontroller = TextEditingController();
  final TextEditingController pincodecontroller = TextEditingController();
  final TextEditingController certificatecontroller = TextEditingController();

  void navigetToRegistration() {
    Get.to(
      () => Homescreen(),
    );
  }

  navigetToRegistrationLogin() {
    Get.to(
      () => Login(),
    );
  }

  bool check = false;
  void value(bool val) {
    check = val;
    update(["check"]);
  }
}
