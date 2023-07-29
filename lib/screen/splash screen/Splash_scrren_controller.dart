import 'dart:async';
import 'package:get/get.dart';
import 'package:tom_project/Uploadimage/Upload_image.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import '../../services/pref_service.dart';
import '../../utils/PrefrenceRes.dart';
import '../login/Login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () {
      bool isLogin = PrefService.getBool(PrefRes.isSignUp);
      //Get.off(Bottomhello());
      Get.off(() => isLogin ? Bottomhello() : LoginPage());
    });
    super.onInit();
  }
}
