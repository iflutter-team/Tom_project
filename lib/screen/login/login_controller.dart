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

class LoginController extends GetxController {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  // Datacontroller datacontroller = Get.put(Datacontroller());
  //
  // List<Data> userList = [];
  //
  // Future<void> check() async {
  //   String userString = Preferenceservices.getString(PrefrenceRes.userlist);
  //   if (userString != '') {
  //     userList = dataFromJson(userString);
  //     bool value = userList.any((element) =>
  //         element.email == emailcontroller.text &&
  //         element.password == passcontroller.text);
  //     if (value == true) {
  //       int index = userList.indexWhere((element) =>
  //           element.email == emailcontroller.text &&
  //           element.password == passcontroller.text);
  //       Data loginUser = userList[index];
  //       Preferenceservices.setValue(
  //           PrefrenceRes.loginUser, json.encode(loginUser.toJson()));
  //       Get.off(() => Bottomhello());
  //     } else {
  //       Get.snackbar("incorrect Details", "please enter valid details");
  //     }
  //   } else {
  //     Get.snackbar("please Signup", "please Signup");
  //   }
  // }

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
