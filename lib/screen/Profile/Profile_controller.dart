import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tom_project/screen/Editprofile/edit_profile_screen.dart';
import 'package:tom_project/screen/login/Login_screen.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';
import 'package:tom_project/utils/firebase_res.dart';

import '../../Getdata/GetDataFromFirebase.dart';
import '../../model/tom_model.dart';
import '../Register/Register_screen.dart';


class profilecontroller extends GetxController {
  File? file;
  UploadTask? uploadTask;
  PlatformFile? pickedFile;
  User? loginUser;
  List<User>? allUserList = [];
  String? loginUserKey = '';

  @override
  void onInit() {
    getLoginUserDataForHomeScreen();
    // TODO: implement onInit
    super.onInit();
  }


  Future<void> getLoginUserDataForHomeScreen() async {
    DatabaseReference reference = FirebaseDatabase.instance
        .ref(FirebaseRes.allSignUpUsersFirebaseKey);
    await reference
        .child(PrefService.getString(PrefRes.loginUserKey))
        .get()
        .then(
          (value) {
        Map loginUserValue = value.value as Map;
        loginUser = User.fromJson(loginUserValue);
        update(['loginUser']);
      },
    );
  }

  Future<void> getAllUserDataForHomeScreen() async {
    allUserList = await GetDataFromFirebase.getAllSignUpUserFromFirebase();
    allUserList!.removeWhere((element) => element.email == loginUser!.email);

    update(['allUserList']);
  }

  void getLoginUser() {
    String loginUserString =
    PrefService.getString(PrefRes.loginUser);
    loginUser = User.fromJson(json.decode(loginUserString));
    update();
  }

  void getAllSignUpUsers() {
    String allUserListString =
    PrefService.getString(PrefRes.signUpUserList);
    allUserList = userFromJson(allUserListString);
    update();
  }

  void onPressedLogOutButton() {
    Get.dialog(
      SimpleDialog(
        title: const Text("log out"),
        children: [
          TextButton(
            onPressed: onPressedLogOut,
            child: const Text(
                "log out",
              style: TextStyle(color: Colors.red),
            ),
          ),
          TextButton(
            onPressed: onPressedCancel,
            child: const Text("cancel"),
          ),
        ],
      ),
    );
  }

  void onPressedAddAccountButton() {
    Get.dialog(
      SimpleDialog(
        title: const Text("addAccount"),
        children: [
          TextButton(
            onPressed: onPressedAddAccount,
            child: const Text(
                "addAccount",
              style: TextStyle(color: Colors.green),
            ),
          ),
          TextButton(
            onPressed: onPressedCancel,
            child: const Text("cancel"),
          ),
        ],
      ),
    );
  }
  void onPressedEditProfile() {
    Get.off(const EditProfileScreen())!.then(
          (value) {
        getAllUserDataForHomeScreen();
        getLoginUserDataForHomeScreen();
      },
    );
  }

  void onPressedLogOut() {
    PrefService.setValue(PrefRes.isSignUp, false);

    Get.offAll(LoginPage());
  }

  void onPressedAddAccount() {
    Get.to(SingupPage())!.then((value) {
        getAllUserDataForHomeScreen();
    });
  }

  void onPressedCancel() {
    Get.back();
  }

  Future<void> onTapSelectImage() async {
    var pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    file = File(pickedImage!.path);

    update(['update']);
  }


  void navigetToeditprofile(){
    Get.off(const EditProfileScreen());
  }

}
