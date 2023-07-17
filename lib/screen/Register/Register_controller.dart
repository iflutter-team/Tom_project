import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/Getdata/GetDataFromFirebase.dart';
import 'package:tom_project/model/tom_model.dart';

import '../../services/firebase_service.dart';
import '../../utils/firebase_res.dart';
import '../login/Login_screen.dart';


class SignupController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();


  List<User>? signUpUserList = [];

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    signUpUserList = await GetDataFromFirebase.getAllSignUpUserFromFirebase();
  }

  // Future<void> onPressedSignUpAddData() async {
  //   Map<String, dynamic> signUpUser = {
  //     "name": name.text,
  //     "password": password.text,
  //     "email": email.text,
  //     "number": number.text
  //   };
  //
  //   bool checkIsValid = signUpUser['email'].toString().isEmail &&
  //       signUpUser['number'].toString().isPhoneNumber &&
  //       signUpUser['name'].toString().isNotEmpty &&
  //       signUpUser['password'].toString().isNotEmpty;
  //   User signUpUserModel = User.fromJson(signUpUser);
  //   bool checkValue = signUpUserList!.any(
  //         (element) => element.email == email.text,
  //   );
  //
  //   if (checkValue) {
  //     Get.snackbar('Error', 'User AllReady Exists');
  //   } else {
  //     if (checkIsValid) {
  //       bool isAddData = await FireBaseService.addData(
  //           FirebaseRes.allSignUpUsersFirebaseKey,
  //           signUpUserModel.toJson());
  //       if (isAddData == true) {
  //         name.clear();
  //         number.clear();
  //         email.clear();
  //         password.clear();
  //         Get.off(LoginPage());
  //       } else {
  //         Get.snackbar(
  //           'signUp ERROR',
  //           'PLEASE check again',
  //         );
  //       }
  //     } else {
  //       Get.snackbar('SignUp Error', 'please check again');
  //     }
  //   }
  // }

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
    Map? allData = await FireBaseService.getAllData(FirebaseRes.allSignUpUsersFirebaseKey);
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
        bool isAddData=await FireBaseService.addData(FirebaseRes.allSignUpUsersFirebaseKey, userModel.toJson());
        if(isAddData){
          Get.to(LoginPage());
        }else{
          Get.snackbar("SignUp Error", "please check again");
        }
      }
    }
  }
}