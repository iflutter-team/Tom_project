//controller
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tom_project/model/tom_model.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/screen/BottomNavigationBar1/Data_controller.dart';
import 'package:tom_project/screen/Forgot%20pass/Forgot_pass.dart';
import 'package:tom_project/screen/Register/Register_screen.dart';
import 'package:get/get.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';

import '../../services/firebase_service.dart';
import '../../utils/firebase_res.dart';

class LoginController extends GetxController {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  Datacontroller datacontroller = Get.put(Datacontroller());

  navigetToRegister() {
    Get.off(
      () => Registerscreen(),
    );
  }

  void navigetToForgot() {
    Get.off(
      () => Forgot(),
    );
  }

  bool Hello = false;
  void change(bool val) {
    Hello = val;
    update(["change"]);
  }
}
