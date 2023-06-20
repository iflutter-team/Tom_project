import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/model/tom_model.dart';
import 'package:tom_project/screen/BottomNavigationBar1/Data_controller.dart';
import 'package:tom_project/screen/Registration%20page%202/Registration_screen.dart';
import 'package:tom_project/screen/login/Login_screen.dart';
import 'package:tom_project/screen/under%20review/Under_screen.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';

class RegisterController extends GetxController {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  final TextEditingController confirmpasscontroller = TextEditingController();
  final TextEditingController Idcontroller = TextEditingController();

  Datacontroller datacontroller = Get.put(Datacontroller());

  List<Data> userList = [];
  Future<void> addData() async {
    Map<String, dynamic> user = {
      "email": namecontroller.text,
      "number": emailcontroller.text,
      "password": passcontroller.text,
      "confirmPassword": confirmpasscontroller.text,
      "personalID": Idcontroller.text,
    };
    Data userdata = Data.fromJson(user);
    String userString = Preferenceservices.getString(PrefrenceRes.userlist);
    if (userString != '') {
      userList = dataFromJson(userString);
      userList.add(userdata);
      Get.off(() => Login());
    } else {
      userList.add(userdata);
    }
    userString = dataToJson(userList);
    Preferenceservices.setValue(PrefrenceRes.userlist, userString);
  }

  // void navigetToRegister() {
  //   Get.off(
  //     () => underscreen(),
  //   );
  // }

  void navigetToRegistrationLogin() {
    Get.off(
      () => Login(),
    );
  }

  bool right = false;
  void change(bool val) {
    right = val;
    update(["right"]);
  }
}
