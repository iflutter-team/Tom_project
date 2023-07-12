
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/services/firebase_service.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/firebase_res.dart';

import '../../model/tom_model.dart';
import '../../utils/PrefrenceRes.dart';
import '../Register/Register_screen.dart';


class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void goToSignupPage() {
    Get.off(() => SingupPage());
  }

  User? loginUser;
  List<User>? userList;
  List<User>? allUserList = [];


  Future<void> check() async {
    Map? allData = await FireBaseService.getAllData(FirebaseRes.adduser);

    List<Map<String, dynamic>> userJsonList = [];
    if (allData != null) {
      print(allData);
      allData.forEach((key, value) {
        Map<String, dynamic> userData = {};
        userData['id'] = key;
        value.forEach((key1, value) {
          userData[key1.toString()] = value;
          print(userData);
        });
        print(userData);
        userJsonList.add(userData);
      });
      userList = userFromJson(jsonEncode(userJsonList));
      bool value = userList!.any((element) =>
      element.email == email.text && element.password == password.text);

      if (value) {
        PrefService.setValue(PrefRes.isSignup, true);

        Get.off(() => Bottomhello());
      } else {
        Get.snackbar("incorrect details", "Please enter valid details");
      }
    }
  }
}

