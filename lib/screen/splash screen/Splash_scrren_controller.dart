import 'dart:async';

import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/screen/login/Login_screen.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    bool islogin = Preferenceservices.getBool(PrefrenceRes.signupUser);
    Timer(const Duration(seconds: 2), () {
      Get.off(() => islogin ? Bottomhello() : Login());
    });
  }
}
