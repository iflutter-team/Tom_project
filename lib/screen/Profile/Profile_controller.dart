import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tom_project/screen/Editprofile/edit_profile_screen.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';
import 'package:tom_project/utils/firebase_res.dart';

import '../../model/tom_model.dart';



class profilecontroller extends GetxController {
  File? file;

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
        .get();
  }


  Future<void> onTapSelectImage() async {
    var pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);

    file = File(pickedImage!.path);

    update(['update']);
  }


  void navigetToeditprofile(){
    Get.off(const editeditprofile());
  }

}
