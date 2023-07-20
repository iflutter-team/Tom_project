
import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/Adsdemo/adsdemo.dart';
import 'package:tom_project/Getdata/GetDataFromFirebase.dart';
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
    Get.off(SingupPage())!.then((value) {getData();});
  }


  List<User>? allUserList = [];
  List<User>? userList = [];
  String? loginUserKey ='';

  bool checkUser = false;

  FirebaseDatabase database = FirebaseDatabase.instance;

  @override
  void onInit() {
    getData();
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> getData() async {
    allUserList = await GetDataFromFirebase.getAllSignUpUserFromFirebase();
  }

  Future<void> check() async {

    checkUser = allUserList!.any((element) => element.email == email.text &&
        element.password == password.text,
    );
    int loginUserIndex = allUserList!.indexWhere((element) =>
    element.email == email.text &&
        element.password == password.text);

    if(checkUser){
      PrefService.setValue(PrefRes.loginUserKey, allUserList![loginUserIndex].id);
      Get.off(Bottomhello());
    }else{
      Get.snackbar("incorrect details", "Please enter valid details");
    }
  }

  Future<void> checkData() async {}
}

