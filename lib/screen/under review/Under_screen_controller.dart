import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/screen/login/Login_screen.dart';

class underController extends GetxController {
  void navigetTounderscreen() {
    Get.off(
      () => Login(),
    );
  }
}
