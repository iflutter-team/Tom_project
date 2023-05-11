import 'package:flutter/material.dart';
import 'package:tom_project/screen/Register/Register_screen.dart';
import 'package:tom_project/screen/Signup/Signup_screen.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/home/Home_screen.dart';

class LoginController extends GetxController{
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  void navigetToLoginscreen() {
    Get.to(() =>  Homescreen(),
    );
  }
  void navigetToRegisterscreen(){
    Get.to(() => Registerscreen(),
    );
  }
}