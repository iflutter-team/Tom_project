import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/model/tom_model.dart';
import 'package:tom_project/screen/BottomNavigationBar1/Data_controller.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';

class profilecontroller extends GetxController {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  final TextEditingController confirmpasscontroller = TextEditingController();
  final TextEditingController Idcontroller = TextEditingController();

  // Datacontroller datacontroller = Get.put(Datacontroller());
  //
  // Data? loginUser;
  // List<Data>? userList;
  //
  // @override
  // void onInit() {
  //   getLoginUser();
  //   getAllUser();
  //   super.onInit();
  // }
  //
  // void getLoginUser() {
  //   String loginUserstring =
  //       Preferenceservices.getString(PrefrenceRes.loginUser);
  //   loginUser = Data.fromJson(json.decode(loginUserstring));
  // }
  //
  // void getAllUser() {
  //   String alluserstring = Preferenceservices.getString(PrefrenceRes.userlist);
  //   userList = dataFromJson(alluserstring);
  // }
}
