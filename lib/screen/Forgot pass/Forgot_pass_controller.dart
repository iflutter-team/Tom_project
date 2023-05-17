import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/home/Home_screen.dart';

class Forgotcontroller extends GetxController {
  final TextEditingController phonecontroller = TextEditingController();

  void navigetToForgot() {
    Get.to(
      () => Homescreen(),
    );
  }
}
