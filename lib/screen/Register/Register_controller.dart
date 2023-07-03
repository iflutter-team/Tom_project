import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/model/tom_model.dart';
import 'package:tom_project/screen/BottomNavigationBar1/Data_controller.dart';
import 'package:tom_project/screen/login/Login_screen.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';

class RegisterController extends GetxController {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  final TextEditingController confirmpasscontroller = TextEditingController();

  Datacontroller datacontroller = Get.put(Datacontroller());

  void navigetToRegistrationLogin() {
    Get.off(
      () => Login(),
    );
  }

  bool right = false;

  void change(bool val) {
    right = val;
    update(["right"]);
  }
}

