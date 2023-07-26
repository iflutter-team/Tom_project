import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';
import 'package:tom_project/utils/firebase_res.dart';
import '../Profile/Profile_controller.dart';

class EditProfileController extends GetxController {
  TextEditingController name = TextEditingController(
      text: Get.find<profilecontroller>().loginUser!.name);
  TextEditingController email = TextEditingController(
      text: Get.find<profilecontroller>().loginUser!.email);
  TextEditingController number = TextEditingController(
      text: Get.find<profilecontroller>().loginUser!.number);

  profilecontroller homeScreenController = profilecontroller();

  Future<void> onPressedEditProfile() async {
    if (name.text.isNotEmpty &&
        email.text.isNotEmpty &&
        number.text.isNotEmpty) {
      Map<String, dynamic> editUser = {
        'name': name.text,
        'email': email.text,
        'number': number.text
      };
      DatabaseReference reference = FirebaseDatabase.instance
          .ref(FirebaseRes.allSignUpUsersFirebaseKey);

      reference
          .child(
        PrefService.getString(PrefRes.loginUserKey),
      )
          .update(editUser);
      update(['loginUser','allUserList']);
      Get.off(Bottomhello());
    } else {
      Get.snackbar('enter valid details', 'your details are not valid');
    }
  }
}
