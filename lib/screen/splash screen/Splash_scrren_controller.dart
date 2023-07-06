import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import '../../services/pref_service.dart';
import '../../utils/PrefrenceRes.dart';
import '../login/Login_screen.dart';

class SplashController extends GetxController {


  @override
  void onInit() {
    // bool isLogin = PrefService.getBool(PrefRes.isSignup);
    // Timer(const Duration(seconds: 2), () {
    //   //Get.off(LoginPage());
    //   Get.off(() => isLogin ? Bottomhello() : LoginPage());
    // });
    super.onInit();
    Login();
  }

  void Login(){
    Timer(const Duration(seconds: 2), () {
       bool isLogin = PrefService.getBool(PrefRes.isSignup);
       Get.off(() => isLogin ? Bottomhello() : LoginPage());
    });
  }


}
