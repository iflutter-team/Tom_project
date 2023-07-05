
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/model/tom_model.dart';

import '../../services/firebase_service.dart';
import '../../utils/firebase_res.dart';
import '../login/Login_screen.dart';


class SignupController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  void tologin(){
    Get.off(LoginPage());
  }

  Future<void> addData() async {
    Map<String, dynamic> user = {
      "name": name.text,
      "password": password.text,
      "email": email.text,
      "number": number.text
    };
    User userModel = User.fromJson(user);
    Map? allData = await FireBaseService.getAllData(FirebaseRes.adduser);
    List<User>? userList;
    List<Map<String,dynamic>>userJsonList=[];
    if (allData != null) {
      print(allData);
      allData.forEach((key, value) {
        Map<String,dynamic>userData={};
        userData["id"] = key;
        value.forEach((key1,value){
          userData[key1.toString()]=value;
          print(userData);
        });
        print(userData);
        userJsonList.add(userData);
      });
      userList=userFromJson(jsonEncode(userJsonList));
      bool value = userList.any((element) =>
      element.email == email.text);
      if (value) {
        Get.snackbar("Login fail", "user already exists");
      } else {
        bool isAddData=await FireBaseService.addData(FirebaseRes.adduser, userModel.toJson());
        if(isAddData){
          Get.off(LoginPage());
        }else{
          Get.snackbar("SignUp Error", "please check again");
        }
      }
    }
  }
}