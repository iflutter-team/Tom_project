import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class profilecontroller extends GetxController {

  File? file;

  picimage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);
    update(['Image']);
  }

  //
  // User? loginUser;
  // List<User>? userList;
  //
  // @override
  // void onInit() {
  //  getLoginUser();
  //   //getAllUser();
  //   super.onInit();
  // }
  //
  // void getLoginUser() {
  //   String loginUserstring =
  //       PrefService.getString(PrefRes.loginUser);
  //   loginUser = User.fromJson(json.decode(loginUserstring));
  // }

  // void getAllUser() {
  //   String alluserstring = Preferenceservices.getString(PrefrenceRes.userlist);
  //   userList = dataFromJson(alluserstring);
  // }
}
