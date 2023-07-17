import 'package:get/get.dart';

import '../login/Login_screen.dart';

class Homecontroller extends GetxController {
  bool isOn = false;

  void navigetTologin(){
    Get.off(LoginPage());
  }

  void Update(bool val) {
    isOn = val;
    update(["Update"]);
  }
}
